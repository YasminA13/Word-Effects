//
//  main.m
//  Word Effects
//
//  Created by Yasmin Ahmad on 2016-03-08.
//  Copyright © 2016 Yasmin Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
    // First input
    char inputChars[255];
    
    while (true)
    {
    printf("Input a string: ");
    fgets(inputChars, 255, stdin);

    printf("Your string is %s\n", inputChars);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    NSLog(@"Input was: %@", inputString);
    
    if ([inputString containsString:@"!"])
        
    {
        NSLog(@"Whoa calm down!");
    }
    
    else if ([inputString containsString:@"?"])
    {
        NSLog(@"I don't know");
    }
    
    // Second input
    
    char styleChars[255];
    
    printf("Select one of the following styles of printing: Uppercase, Lowercase, Canadian, No Spaces or Numberize\n");
    fgets(styleChars, 255, stdin);
    NSString *styleString = [NSString stringWithUTF8String:styleChars];
    

    styleString = [styleString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    if ([styleString isEqualToString:@"Uppercase"])
    {
        NSString *uppercase = [inputString uppercaseString];
        NSLog(@"Uppercase is: %@", uppercase);
        
    }
    
    else if ([styleString isEqualToString:@"Lowercase"])
        
    {
        NSString *lowercase = [inputString lowercaseString];
        NSLog(@"Lowercase is: %@", lowercase);
    }
    
    else if([styleString isEqualToString:@"Canadian"])
        
    {
        NSString *canadianise = [inputString stringByAppendingString: @" eh?"];
        NSLog(@"Canadianised is: %@", canadianise);
    }
    
    else if([styleString isEqualToString:@"No Spaces"])
    {
    
        NSString *dashes = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"How about some dashes: %@", dashes);
    }
    
    else if([styleString isEqualToString:@"Numberize"])
    {

        NSInteger numberize = [inputString integerValue];
        NSLog(@"The numberized value is: %lu", numberize);
        
        if ([inputString isEqual: @"0"])
        {
            NSLog(@"The value is still %lu", numberize);
        }
        else if (numberize != 0)
        {
            NSLog(@"The value is %lu", numberize);
        }
        
        else
        {
            NSLog(@"This is not a valid entry");
        }
    }
    
}
    return 0;
}
