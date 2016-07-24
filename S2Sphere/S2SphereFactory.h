//
//  S2SphereFactory.h
//  PokeHunt
//
//  Created by Dmitry Fa[n]tastik on 25/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface S2SphereFactory : NSObject

+ (NSArray<NSNumber *> *)cellsForLat:(double)lat lon:(double)lon;

@end
