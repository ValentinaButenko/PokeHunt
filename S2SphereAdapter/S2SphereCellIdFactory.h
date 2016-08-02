//
//  S2SphereCellIdFactory.h
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 26/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface S2SphereCellIdFactory : NSObject

+ (NSArray *)cellIdsForLatitude:(double)lat longitude:(double)lon;
+ (CLLocationCoordinate2D)coordinateForCellId:(UInt64)cellId;

@end
