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

- (NSString *)moneyFormatWithQuote {
    NSMutableArray *resultArray = [NSMutableArray array];   // 栈
    NSString *tmpString = [self copy];  // 临时字符串
    NSString *prefixString = @"";   // 存放+-号
    
    if ([self hasPrefix:@"-"] || [self hasPrefix:@"+"]) {    // 取出+-号
        prefixString = [[self substringToIndex:1] copy];
        tmpString = [[self substringFromIndex:1] copy];
    }
    
    if ([tmpString containsString:@"."]) { // 取出小数点
        NSArray *dotArray = [tmpString componentsSeparatedByString:@"."];
        if (dotArray.count == 2) {
            [resultArray insertObject:dotArray[1] atIndex:0];
            [resultArray insertObject:@"." atIndex:0];
            tmpString = [tmpString substringToIndex:[tmpString rangeOfString:@"."].location];
        } else {
            return self;
        }
    }
    
    while (tmpString.length > 3) {
        [resultArray insertObject:[tmpString substringFromIndex:tmpString.length-3] atIndex:0];
        [resultArray insertObject:@"," atIndex:0];
        tmpString = [tmpString substringToIndex:tmpString.length-3];
    }
    if (tmpString && tmpString.length > 0) {
        [resultArray insertObject:tmpString atIndex:0];
    } else if ([resultArray containsObject:@","]) {
        [resultArray removeObjectAtIndex:0];
    }
    [resultArray insertObject:prefixString atIndex:0];
    return [resultArray componentsJoinedByString:@""];
}

+ (NSString *)timeStringWithSec:(NSTimeInterval)timeInterval {
    NSMutableString *resultString = [NSMutableString string];
    NSTimeInterval resultTime = timeInterval;
    if (resultTime / 3600 > 0) {
        [resultString appendFormat:@"%02d:", (int)resultTime / 3600];
        resultTime = (int)resultTime % 3600;
    } else {
        [resultString appendString:@"00:"];
    }
    if (resultTime / 60 > 0) {
        [resultString appendFormat:@"%02d:", (int)resultTime / 60];
        resultTime = (int)resultTime % 60;
    } else {
        [resultString appendString:@"00:"];
    }
    [resultString appendFormat:@"%02d", (int)resultTime];
    return resultString;
}

- (UIColor *)colorFromString {
    NSString *cString = [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // 判断前缀
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

@end
