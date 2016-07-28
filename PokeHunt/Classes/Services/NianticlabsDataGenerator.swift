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
import S2SphereAdapter


private let kRequest5StaticData = "05daf51635c82611d1aac95c0b051d3ec088a930"

final class NianticlabsDataGenerator {
    private enum RequestType : Int32 {
        case GetMapObjects = 106
    }


    class func loginRequest(accessToken : String) -> POGORequestEnvelope {
        let r = POGORequestEnvelope()
        r.statusCode = 2
        r.unknown12 = Int64(rand() % 899999)
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

    class func stopsRequest(session : POGOResponseEnvelope,
                            loc: CLLocationCoordinate2D) -> POGORequestEnvelope {
        let r  = POGORequestEnvelope()
        r.statusCode = 2
        r.requestId = 2212820743501119519 - UInt64((rand() % 999))
        r.unknown12 = Int64(rand() % 899999)

        r.latitude = loc.latitude
        r.longitude = loc.longitude
        r.altitude = 50

        r.authTicket = session.authTicket
        r.requestsArray.addObject(getMapObjectRequest(loc))

        for (t) in [126, 4, 129] {
            let req = POGORequest()
            SetPOGORequest_RequestType_RawValue(req, Int32(t))
            r.requestsArray.addObject(req)
        }
        r.requestsArray.addObject(self.getStaticRequestType5())


        r.unknown12 = 1

        return r
    }

    // MARK: private
    private class func getMapObjectRequest(loc: CLLocationCoordinate2D) -> POGORequest {
        let r = POGORequest()
        SetPOGORequest_RequestType_RawValue(r, RequestType.GetMapObjects.rawValue)

        let mapObj = POGOGetMapObjectsMessage()
        let ourcells = S2SphereCellIdFactory.cellIdsForLatitude(loc.latitude, longitude: loc.longitude).map { (a) in
            return (a as! NSNumber).unsignedLongLongValue
        }.sort { $0 < $1 }

        for (_, e) in ourcells.enumerate() {
            mapObj.cellIdArray.addValue(e)
        }

        mapObj.latitude = loc.latitude
        mapObj.longitude = loc.longitude

        r.requestMessage = mapObj.data()

        return r
    }

    private class func getStaticRequestType5() -> POGORequest {
        let req = POGORequest()
        SetPOGORequest_RequestType_RawValue(req, Int32(5))

        let setMes = POGODownloadSettingsMessage()
        setMes.hash_p = kRequest5StaticData
        req.requestMessage = setMes.data()

        return req
    }
}
