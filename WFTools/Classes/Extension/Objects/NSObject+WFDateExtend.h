//
//  NSObject+WFDateExtend.h
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (WFDateExtend)

/**
 秒转成固定格式
 
 @param formatter 字符串格式
 @param seconds 秒
 @return 格式化的时间字符串
 */
+ (NSString *)hp_formatString:(NSString *)formatter fromSec:(NSTimeInterval)seconds;

/**
 毫秒转成固定格式
 
 @param formatter 字符串格式
 @param milSeconds 毫秒
 @return 格式化的时间字符串
 */
+ (NSString *)hp_formatString:(NSString *)formatter fromMilSec:(NSTimeInterval)milSeconds;

/**
 将时间戳转成指定格式的字符串
 
 @param dateFormat 格式
 @param timeStamp 时间戳
 @return 指定格式的字符串
 */
- (NSString *)timeStringForDateFormat:(NSString *)dateFormat AndTimeStamp:(long)timeStamp;
- (NSString *)getTime:(long long)ctrateTime;
/**
 将时间戳转成 YYYY-MM-dd 格式的字符串
 
 @param ctrateTime 时间戳
 @return 指定格式的字符串
 */
- (NSString *)getTimeWithFormatYMd:(long long)ctrateTime;

/**
 将时间戳转成 YYYY-MM 格式的字符串
 
 @param ctrateTime 时间戳
 @return 指定格式的字符串
 */
- (NSString *)getTimeWithFormatHM:(long long)ctrateTime;

/**
 将时间戳转成 YYYY-MM-dd HH:mm 格式的字符串
 
 @param ctrateTime 时间戳
 @return 指定格式的字符串
 */
- (NSString *)getTimeWithFormatYMDHM:(long long)ctrateTime;

/**
 将时间戳转成 YYYY-MM-dd HH:mm:ss 格式的字符串
 
 @param ctrateTime 时间戳
 @return 指定格式的字符串
 */
- (NSString *)getTimeWithFormatYMDHMS:(long long)ctrateTime;

@end
