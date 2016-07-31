//
//  NianticlabsService.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 24/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import CoreLocation
import Alamofire
import POGOProto
import Protobuf
import SwiftTask
import INTULocationManager


private let NianticlabsErrorDomain = GlobalErrorDomain + ".NianticlabsService"
private let NianticlabsAPIURL = "https://pgorelease.nianticlabs.com/plfe/rpc"


final class NianticlabsService {
    enum ErrorType : Int {
        case CannotFetchGoogleAuthToken
        case IncorrectSessionAPIURL
        case SessionResponseConstructionFail
        case TaskHasBeenCanceled
        case BadLocation
    }
    private typealias NianticlabsSessionTask = Task<Void, Void, NSError>
    internal typealias NianticlabsStopsTask = Task<Void, POGOGetMapObjectsResponse, NSError>

    private static var instance : NianticlabsService? = nil

    class func makeShared(tokenGetter: ((String?) -> Void) -> Void) {
        if  instance != nil {
            fatalError("You could not instantiate another instance of the class")
        }
        instance = NianticlabsService(tokenGetter: tokenGetter)
    }

    class var mainService : NianticlabsService {
        get { return instance! }
    }


    private init(tokenGetter: ((String?) -> Void) -> Void) {
        self.tokenGetter = tokenGetter

        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        config.HTTPAdditionalHeaders = Manager.defaultHTTPHeaders
        config.HTTPAdditionalHeaders!["User-Agent"] = "Niantic App"
        
        self.manager = Manager(configuration: config)
        self.configureLocationUpdater()
    }

    private func configureLocationUpdater() {
        let locMgr = INTULocationManager.sharedInstance()
        locMgr.subscribeToLocationUpdatesWithBlock { (loc, accuracy, status) in
            // TODO: log accuracy and status
            if status == .Success {
                self.location = loc
            }
            else {
                print(status)
                // provide callback for error
            }
        }
    }
    
    // MARK: internal methods
    internal func stopsTask() -> NianticlabsStopsTask {
        let task = NianticlabsStopsTask { _, fulfill, reject, configure in
            let session = self.sessionTask()
            session.success { _ in
                guard let loc = self.location else {
                    let err = NSError(domain: NianticlabsErrorDomain, code: ErrorType.BadLocation.rawValue, userInfo: nil)
                    reject(err)
                    return
                }
                let data = NianticlabsDataGenerator.stopsRequest(self.session!, loc: loc.coordinate)

                self.manager.request(.POST, self.apiUrl!, parameters: [:], encoding: .Custom({ (convertible, _) in
                    let mutableRequest = convertible.URLRequest.copy() as! NSMutableURLRequest
                    mutableRequest.HTTPBody = data.data()
                    return (mutableRequest, nil)
                })).responseData { (resp) in
                    switch (resp.result) {
                    case .Failure(let err):
                        print(err)
                        // TODO: add logging
                        reject(err)
                    case .Success(let val):
                        do {
                            let resp = try POGOResponseEnvelope(data: val)
                            let mapObj = try POGOGetMapObjectsResponse(data: resp.returnsArray[0] as! NSData)
                            fulfill(mapObj)
                        }
                        catch let error as NSError {
                            reject(error)
                        }
                    }
                }.resume()

            }.failure({ (error, isCancelled) in
                reject(error ?? self.canceledError())
            }).resume()

            configure.cancel = { [weak session] in
                session?.cancel()
            }
            configure.pause = { [weak session] in
                session?.pause()
            }
            configure.resume = { [weak session] in
                session?.resume()
            }

        }
        return task.retry(10)
    }

    // MARK: private methods
    private var session : POGOResponseEnvelope? = nil
    private var apiUrl : String? = nil
    private var location : CLLocation? = nil

    private let manager : Manager
    private let tokenGetter : ((String?) -> Void) -> Void
}


extension NianticlabsService {
    private func sessionTask() -> NianticlabsSessionTask {
        let task = NianticlabsSessionTask { _, fulfill, reject, configure in
            self.tokenGetter { (newToken) in
                guard let token = newToken else {
                    // TODO: add logging
                    let err = NSError(domain: NianticlabsErrorDomain,
                        code: ErrorType.CannotFetchGoogleAuthToken.rawValue,
                        userInfo: nil)
                    reject(err)
                    return
                }
                if self.session != nil {
                    fulfill()
                    return
                }

                let data = NianticlabsDataGenerator.loginRequest(token)

                let req = self.manager.request(.POST, NianticlabsAPIURL, parameters: [:], encoding: .Custom({ (convertible, _) in
                    let mutableRequest = convertible.URLRequest.copy() as! NSMutableURLRequest
                    mutableRequest.HTTPBody = data.data()
                    return (mutableRequest, nil)
                })).responseData { (resp) in
                    switch (resp.result) {
                    case .Failure(let err):
                        print(err)
                        // TODO: add logging
                        reject(err)
                    case .Success(let val):
                        do {
                            let respEnvelope = try POGOResponseEnvelope(data: val)
                            if let url = respEnvelope.apiURL {
                                if (url.containsString("plfe")) {
                                    self.session = respEnvelope
                                    self.apiUrl = "https://" + url + "/rpc"
                                    fulfill()
                                    return
                                }
                            }
                            let err = NSError(domain: NianticlabsErrorDomain,
                                code: ErrorType.IncorrectSessionAPIURL.rawValue,
                                userInfo: ["data":respEnvelope])
                            // TODO: add logging
                            reject(err)
                        } catch {
                            let err = NSError(domain: NianticlabsErrorDomain,
                                code: ErrorType.SessionResponseConstructionFail.rawValue,
                                userInfo: ["data":val])
                            // TODO: add logging
                            reject(err)
                        }
                    }
                }

                configure.cancel = { [weak req] in
                    req?.cancel()
                }
                configure.pause = { [weak req] in
                    req?.suspend()
                }
                configure.resume = { [weak req] in
                    req?.resume()
                }
            }
        }
        
        return task.retry(10)
    }

    private func canceledError() -> NSError {
        return NSError(domain: NianticlabsErrorDomain,
                       code: ErrorType.TaskHasBeenCanceled.rawValue,
                       userInfo: nil)
    }
}
