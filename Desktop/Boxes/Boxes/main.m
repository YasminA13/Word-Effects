//
//  main.m
//  Boxes
//
//  Created by Yasmin Ahmad on 2016-03-08.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    
    
    Box *boxA = [[Box alloc] init];
    boxA.width = 10.5;
    boxA.length = 20.5;
    boxA.height = 12.5;
    
    NSLog(@"The Box A has a volume of %.2f", [boxA volume]);
    
    Box *boxB = [[Box alloc] init];
    boxB.width = 3.5;
    boxB.length = 3.5;
    boxB.height = 3.5;
    
    NSLog(@"The Box B has a volume of %.2f", [boxB volume]);
    
    float x = [boxA numberOfTimesFitsIn:boxB];
    
    
    NSLog(@"The box fits in %.2f times", x);
    
//    float boxAVolume = [boxA volume];
//    float boxBVolume = [boxB volume];
//    float calc_result = boxAVolume / boxBVolume;
    
//    if (boxBVolume < boxAVolume)
//    {
//    NSLog(@"Box B will fit into Box A: %.2f times", calc_result);
//    }
//    if (boxBVolume > boxAVolume)
//    {
//        NSLog(@"The Box B will not fit into Box A - it's too big!");
//    }
    
    return 0;
}


