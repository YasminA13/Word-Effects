//
//  Box.h
//  Boxes
//
//  Created by Yasmin Ahmad on 2016-03-08.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (assign, nonatomic) float width;
@property (assign, nonatomic) float length;
@property (assign, nonatomic) float height;

- (float)volume;
- (float)numberOfTimesFitsIn:(Box *)anotherBox;

@end
