//
//  NSObject+WFDateExtend.m
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import "NSObject+WFDateExtend.h"

@implementation NSObject (WFDateExtend)

+ (NSString *)hp_formatString:(NSString *)formatter fromSec:(NSTimeInterval)seconds {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:seconds];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter];
    return [dateFormatter stringFromDate:date];
}

+ (NSString *)hp_formatString:(NSString *)formatter fromMilSec:(NSTimeInterval)milSeconds {
    return [NSDate hp_formatString:formatter fromSec:milSeconds/1000];
}

- (NSString *)timeStringForDateFormat:(NSString *)dateFormat AndTimeStamp:(long)timeStamp {
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeStamp];
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = dateFormat;
    NSString *dateString = [fmt stringFromDate:date];
    
    return dateString;
}

- (NSString *)getTime:(long long)ctrateTime {
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:ctrateTime];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

- (NSString *)getTimeWithFormatHM:(long long)ctrateTime {
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"HH:mm"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:ctrateTime];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

- (NSString *)getTimeWithFormatYMd:(long long)ctrateTime {
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:ctrateTime];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

- (NSString *)getTimeWithFormatYMDHM:(long long)ctrateTime {
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:ctrateTime];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

- (NSString *)getTimeWithFormatYMDHMS:(long long)ctrateTime {
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:ctrateTime];
    NSString *confromTimespStr = [formatter stringFromDate:confromTimesp];
    return confromTimespStr;
}

- (NSInteger)currentYear {
    NSDate *currentDate = [NSDate date];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitYear fromDate:currentDate];
    return [components year];
}

- (NSInteger)currentMonth {
    NSDate *currentDate = [NSDate date];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitMonth fromDate:currentDate];
    return [components month];
}

- (NSString *)currentYearMonthDesc {
    NSInteger year = [self currentYear];
    NSInteger month = [self currentMonth];
    return [NSString stringWithFormat:@"%@-%02ld", @(year), (long)month];
}

- (NSString *)lastYearMonthDesc {
    NSInteger year = [self currentYear];
    NSInteger month = [self currentMonth];
    if (month > 1) {
        month -= 1;
    } else {
        year -= 1;
        month = 12;
    }
    return [NSString stringWithFormat:@"%@-%02ld", @(year), (long)month];
}

@end
