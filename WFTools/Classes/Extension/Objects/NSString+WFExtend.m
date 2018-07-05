//
//  NSString+WFExtend.m
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import "NSString+WFExtend.h"

@implementation NSString (WFExtend)

+ (NSString *)checkNull:(NSString *)string {
    if (string == nil || [string isKindOfClass:[NSNull class]]) {
        return @"";
    }
    return string;
}

- (BOOL)isBlankString {
    if (self == nil) {
        return YES;
    }
    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if (self.length == 0) {
        return YES;
    }
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedStr = [self stringByTrimmingCharactersInSet:set];
    if (trimmedStr.length == 0) {
        return YES;
    }
    return NO;
}

@end
