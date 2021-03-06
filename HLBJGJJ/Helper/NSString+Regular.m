//
//  NSString+Regular.m
//  CCF
//
//  Created by honglili on 17/8/3.
//  Copyright © 2017年 honglili. All rights reserved.
//

#import "NSString+Regular.h"

@implementation NSString(Regular)

-(NSString *)stringWithRegular:(NSString *)regular{
    
    NSRange timeRange = [self rangeOfString:regular options:NSRegularExpressionSearch];
    
    if (timeRange.location != NSNotFound) {
        return [self substringWithRange:timeRange];
    }
    return nil;
}

-(NSString *)stringWithRegular:(NSString *)regular andChild:(NSString *)childRegular{
    NSString * parentStyring = [ self findStringWithRegular:self :regular];
    
    if (parentStyring != nil) {
        return [parentStyring findStringWithRegular:parentStyring :childRegular];
    }
    
    return nil;
}


-(NSString *) findStringWithRegular:(NSString *) src :(NSString *)regular{
    
    NSRange range = [src rangeOfString:regular options:NSRegularExpressionSearch];
    
    if (range.location != NSNotFound) {
        return [src substringWithRange:range];
    }
    return nil;
}

-(NSString *)trim{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
