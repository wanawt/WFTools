//
//  NSString+WFExtend.h
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

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

/**
 插入逗号
 用于金额显示，比如 1000 显示为 1,000
 
 @return 格式化后的字符串
 */
- (NSString *)moneyFormatWithQuote;

/**
 格式化时间段
 比如将 200秒 格式化成 00:03:20
 
 @param timeInterval 时间段
 @return @"hh:MM:ss"
 */
+ (NSString *)timeStringWithSec:(NSTimeInterval)timeInterval;

- (UIColor *)colorFromString;

@end
