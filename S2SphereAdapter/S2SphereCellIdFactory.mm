//
//  S2SphereCellIdFactory.m
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 26/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "S2SphereCellIdFactory.h"
#import "s2latlng.h"
#import "s2cellid.h"

@implementation S2SphereCellIdFactory

+ (NSArray *)cellIdsForLatitude:(double)lat longitude:(double)lon {
    S2LatLng latLng = S2LatLng::FromDegrees(lat, lon);
    S2CellId cellId = S2CellId::FromLatLng(latLng).parent(15);

    NSMutableArray *arr = [NSMutableArray arrayWithObject:@(cellId.id())];
    S2CellId next = cellId.next();
    S2CellId prev = cellId.prev();

    for (int i = 0; i < 10; i++) {
        [arr addObject:@(next.id())];
        [arr addObject:@(prev.id())];

        next = next.next();
        prev = prev.prev();
    }

    return arr;
}

+ (CLLocationCoordinate2D)coordinateForCellId:(UInt64)cellId {
    S2CellId s2cell = S2CellId(cellId);
    S2LatLng latLng = s2cell.ToLatLng();
    return CLLocationCoordinate2DMake(latLng.lat().degrees(), latLng.lng().degrees());
}

@end
