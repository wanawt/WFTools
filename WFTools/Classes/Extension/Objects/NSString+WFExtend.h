//
//  NSString+WFExtend.h
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (WFExtend)

/**
 过滤 nil, NSNull 字符串

 @return 非 nil 且 非 NSNull 字符串
 */
+ (NSString *)checkNull:(NSString *)string;

/**
 字符串是否为空
 包括 nil, Null, @"", @" " 等等
 */
- (BOOL)isBlankString;

@end
