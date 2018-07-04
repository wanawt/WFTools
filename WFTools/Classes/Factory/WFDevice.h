//
//  WFDevice.h
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/4.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface WFDevice : NSObject

/**
 状态栏高度
 
 @return 高度
 */
+ (CGFloat)wf_statusBarHeight;


/**
 导航栏高度
 
 @return 高度
 */
+ (CGFloat)wf_navigationBarHeight;


/**
 导航栏加状态栏高度
 
 @return 高度
 */
+ (CGFloat)wf_topHeight;


/**
 底部高度
 
 @return 高度
 */
+ (CGFloat)wf_bottomOffset;

@end
