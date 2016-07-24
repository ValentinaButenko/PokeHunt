//
//  S2SphereFactory.m
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 25/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import "S2SphereFactory.h"
#import "s2cellid.h"
#import "s2latlng.h"

@implementation S2SphereFactory

+ (NSArray<NSNumber *> *)cellsForLat:(double)lat lon:(double)lon
{
    S2LatLng latLong = S2LatLng::FromDegrees(lat, lon);
    S2CellId cell = S2CellId::FromLatLng(latLong);

    S2CellId next = cell.next();
    S2CellId prev = cell.prev();

    NSMutableArray *arr = [NSMutableArray arrayWithObject:@(cell.id())];
    for (int i = 0; i < 10; i++) {
        [arr addObject:@(next.id())];
        [arr addObject:@(prev.id())];

        next = next.next();
        prev = prev.prev();
    }
    return arr;
}

@end
