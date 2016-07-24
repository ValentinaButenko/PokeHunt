//
//  NianticlabsService.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 24/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import Alamofire
import PHProtobufModels
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

    func getApiEndpoint(handler: (PHProtoResponseEnvelop?, NSError?) -> Void) {
        tokenGetter { (str) in
            guard let token = str else {
                print("things went badly")
                return
            }

            let subRequest = PHProtoRequestEnvelop_Requests()
            subRequest.type = 2

            let request = PHProtoRequestEnvelop()
            request.unknown1 = 1
            request.rpcId = 8145806132888207460
            request.requestsArray.addObject(subRequest)

            // get it from real values
            request.latitude = 4632237663676957151
            request.longitude = 4630312617481759938
            request.altitude = 0
            //

            request.unknown12 = 989

            let authToken = PHProtoRequestEnvelop_AuthInfo_JWT()
            authToken.contents = token
            authToken.unknown13 = 59

            let auth = PHProtoRequestEnvelop_AuthInfo()
            auth.provider = "google"
            auth.token = authToken

            request.auth = auth

            self.manager.request(.POST, kNianticlabsAPIURL, parameters: nil, encoding: .Custom({ (convertible, _) in
                let mutableRequest = convertible.URLRequest.copy() as! NSMutableURLRequest
                mutableRequest.HTTPBody = request.data()
                mutableRequest.setValue("Niantic App", forHTTPHeaderField: "User-Agent")
                return (mutableRequest, nil)
            })).responseData { (resp) in
                switch (resp.result) {
                case .Failure(let err):
                    print(err)
                    handler(nil, err)
                case .Success(let val):
                    let respEnvelope = try! PHProtoResponseEnvelop(data: val)
                    print(respEnvelope)
                    handler(respEnvelope, nil)
                }
            }.resume()
        }
    }
}
