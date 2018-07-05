//
//  NSObject+WFExtend.h
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/5.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (WFExtend)

/**
 判断
 对象是否 非 nil, NSNull
 数组是否非空
 字典是否非空
 字符串是否非空
 */
- (BOOL)isNoEmpty;

/**
 将图片写入 NSCachesDirectory

 @return 图片路径
 */
- (NSString *)writeToFile:(UIImage *)image;

@end
