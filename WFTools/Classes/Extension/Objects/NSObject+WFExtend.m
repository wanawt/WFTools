//
//  NSObject+WFExtend.m
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import "NSObject+WFExtend.h"

@implementation NSObject (WFExtend)

- (BOOL)isNoEmpty {
    if ([self isKindOfClass:[NSNull class]]) {
        return NO;
    } else if ([self isKindOfClass:[NSString class]]) {
        return [(NSString *)self length] > 0;
    } else if ([self isKindOfClass:[NSData class]]) {
        return [(NSData *)self length] > 0;
    } else if ([self isKindOfClass:[NSArray class]]) {
        return [(NSArray *)self count] > 0;
    } else if ([self isKindOfClass:[NSDictionary class]]) {
        return [(NSDictionary *)self count] > 0;
    } else if ([self isKindOfClass:[NSMutableDictionary class]]) {
        return [(NSDictionary *)self count] > 0;
    }
    return YES;
}

- (NSString *)writeToFile:(UIImage *)image {
    NSString *cachesPath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask, YES) firstObject];
    NSString *imagegPath =[cachesPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%f.jpg",[[NSDate date] timeIntervalSince1970]]];
    [UIImageJPEGRepresentation(image, 0.8) writeToFile:imagegPath atomically:YES];
    return imagegPath;
}

@end
