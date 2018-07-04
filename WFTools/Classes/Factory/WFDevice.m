//
//  WFDevice.m
//  WFTools
//
//  Created by Zhang Weifan on 2018/7/4.
//  Copyright © 2018年 menlian. All rights reserved.
//

#import "WFDevice.h"

@implementation WFDevice

+ (CGFloat)wf_statusBarHeight {
    if ([UIScreen mainScreen].bounds.size.height > 736) {
        return 44;
    }
    return 20;
}

+ (CGFloat)wf_navigationBarHeight {
    return 44;
}

+ (CGFloat)wf_topHeight {
    return [WFDevice wf_statusBarHeight] + [WFDevice wf_navigationBarHeight];
}

+ (CGFloat)wf_bottomOffset {
    if ([UIScreen mainScreen].bounds.size.height > 736) {
        return 34;
    }
    return 0;
}

@end
