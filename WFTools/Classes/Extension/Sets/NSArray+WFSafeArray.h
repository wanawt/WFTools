//
//  NSArray+WFSafeArray.h
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (WFSafeArray)

//防止越界
- (id)objectAtSafeIndex:(NSInteger)index;

//数字排序
- (NSArray *)sortedWithArray:(NSArray *)numbers;

//倒序数组
- (NSArray *)reverseForArray:(NSArray *)array;

// jsonString
- (NSString *)jsonString;

@end
