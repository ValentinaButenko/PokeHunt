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


private let kNianticlabsAPIURL = "https://pgorelease.nianticlabs.com/plfe/rpc"


final class NianticlabsService {
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

    private let manager : Manager
    private let tokenGetter : ((String?) -> Void) -> Void
    private init(tokenGetter: ((String?) -> Void) -> Void) {
        self.tokenGetter = tokenGetter

        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        config.HTTPAdditionalHeaders = Manager.defaultHTTPHeaders
        config.HTTPAdditionalHeaders!["User-Agent"] = "Niantic App"
        
        self.manager = Manager(configuration: config)
    }
    private var session : POGOResponseEnvelope? = nil
    // MARK: internal methods

    internal func getAllStops(handler: ([POGOGetMapObjectsResponse]?, NSError?) -> Void) {
        let coord = CLLocationCoordinate2D(latitude: 50.4313132, longitude: 30.4935952)
        let r = NianticlabsDataGenerator.stopsRequest(session!, loc: coord)
        self.manager.request(.POST, kNianticlabsAPIURL, parameters: [:], encoding: .Custom({ (convertible, _) in
            let mutableRequest = convertible.URLRequest.copy() as! NSMutableURLRequest
            mutableRequest.HTTPBody = r.data()
            return (mutableRequest, nil)
        })).responseData { (resp) in
            switch (resp.result) {
            case .Failure(let err):
                print(err)
            case .Success(let val):
                let resp = try! POGOGetMapObjectsResponse(data: val)
                print(resp)
            }
            }.resume()
    }

    // MARK: private methods
    internal func getLocalSession(handler: (POGOResponseEnvelope?, NSError?) -> Void) {
        if let session = session {
            handler(session, nil)
            return;
        }

        tokenGetter { (str) in
            guard let token = str else {
                print("things went badly")
                return
            }

            let req = NianticlabsDataGenerator.loginRequest(token)
            let repeatBlock = {
                let time = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * NSEC_PER_SEC))
                dispatch_after(time, dispatch_get_main_queue(), {
                    self.getLocalSession(handler)
                })
            }

            self.manager.request(.POST, kNianticlabsAPIURL, parameters: [:], encoding: .Custom({ (convertible, _) in
                let mutableRequest = convertible.URLRequest.copy() as! NSMutableURLRequest
                mutableRequest.HTTPBody = req.data()
                return (mutableRequest, nil)
            })).responseData { (resp) in
                switch (resp.result) {
                case .Failure(let err):
                    print(err)
                    repeatBlock()
                case .Success(let val):
                    do {
                        let respEnvelope = try POGOResponseEnvelope(data: val)
                        if let url = respEnvelope.apiURL {
                            if (url.containsString("plfe")) {
                                self.session = respEnvelope
                                handler(respEnvelope, nil)
                                self.getAllStops({ (res, err) in
                                    print(resp)
                                    print(err)
                                })
                                return
                            }
                        }
                        repeatBlock()
                    } catch {
                        repeatBlock()
                    }
                }
            }.resume()
        }
    }
}
