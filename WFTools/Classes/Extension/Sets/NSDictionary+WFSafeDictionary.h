//
//  NSDictionary+WFSafeDictionary.h
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (WFSafeDictionary)

- (id)objectAtKeyPath:(NSString *)keyPath;

- (id)objectAtKeyPath:(NSString *)path  otherwise:(NSObject *)other;

// 查询字符串
- (NSString *)keyValueString;

// jsonString
- (NSString *)jsonString;

@end
