//
//  NianticlabsDataGenerator.swift
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 24/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation
import CoreLocation
import Protobuf
import POGOProto
import S2Sphere


final class NianticlabsDataGenerator {
    private enum RequestType : Int32 {
        case GetMapObjects = 106
    }


    class func loginRequest(accessToken : String) -> POGORequestEnvelope {
        let r = POGORequestEnvelope()
        r.statusCode = 2
        r.unknown12 = Int64(rand() % 999999)
        r.requestId = 72185515343874 - UInt64((rand() % 999))
        r.authInfo.provider = "google"
        r.authInfo.token.contents = accessToken

        for (t) in [2, 126, 4, 129, 5] {
            let req = POGORequest()
            SetPOGORequest_RequestType_RawValue(req, Int32(t))
            r.requestsArray.addObject(req)
        }

        return r
    }

    class func stopsRequest(session : POGOResponseEnvelope) -> POGORequestEnvelope {
        let r  = POGORequestEnvelope()

        return r
    }

    // MARK: private
    internal func getMapObjectRequest(loc: CLLocation) -> POGORequest {
        let r = POGORequest()
        SetPOGORequest_RequestType_RawValue(r, RequestType.GetMapObjects.rawValue)

        let mapObj = POGOGetMapObjectsMessage()
        let cells = S2SphereFactory.cellsForLat(loc.coordinate.latitude, lon: loc.coordinate.longitude)
        for (_, e) in cells.enumerate() {
            mapObj.cellIdArray.addValue(e.unsignedLongLongValue)
            mapObj.sinceTimestampMsArray.addValue(0)
        }

        mapObj.latitude = loc.coordinate.latitude
        mapObj.longitude = loc.coordinate.longitude

        r.requestMessage = mapObj.data()

        return r
    }
}
