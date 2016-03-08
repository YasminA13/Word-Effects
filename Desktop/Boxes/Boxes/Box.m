//
//  Box.m
//  Boxes
//
//  Created by Yasmin Ahmad on 2016-03-08.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import "Box.h"

@implementation Box


- (float)volume
    {
    return self.width * self.height * self.length;
    }

- (float)numberOfTimesFitsIn:(Box *)anotherBox
{
    float boxAVolume = [self volume];
    float boxBVolume = [anotherBox volume];

    float calcResult;
    
    if (boxAVolume > boxBVolume)
    {
        calcResult = boxAVolume / boxBVolume;
    }
    else
    {
        calcResult = boxBVolume / boxAVolume;
    }
    
    return calcResult;
}

@end

//
//float boxAVolume = [boxA volume];
//float boxBVolume = [boxB volume];
//float calc_result = boxAVolume / boxBVolume;
