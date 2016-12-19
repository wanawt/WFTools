//
//  WFFactory.h
//  wififace
//
//  Created by 巩姝慧 on 2016/12/8.
//  Copyright © 2016年 menlian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface WFFactory : NSObject

+(UILabel*)labelWithFrame:(CGRect)rect
                 FontSize:(UIFont*)font
                textColor:(UIColor*)color;

+(UILabel*)labelWithFrame:(CGRect)rect
                 FontSize:(UIFont*)font
                textColor:(UIColor*)color
                     text:(NSString*)text;

+(UILabel*)labelWithFrame:(CGRect)rect
                 FontSize:(UIFont*)font
                textColor:(UIColor*)color
          backGroundColor:(UIColor*)backGroundcolor;

+(UILabel*)labelWithFrame:(CGRect)rect
                 FontSize:(UIFont*)font
                textColor:(UIColor*)color
            textAlignment:(NSTextAlignment)textAlignment;

+ (UIImageView*)imageViewWithFrame:(CGRect)rect
                             image:(UIImage*)image;

+(UIImageView*)imageViewWithFrame:(CGRect)rect
                            image:(UIImage*)image
                            color:(UIColor*)color;

+(UIButton*)buttonWithFrame:(CGRect)rect
                      title:(NSString*)title
                   FontSize:(UIFont*)font
                  textColor:(UIColor*)color
                      image:(UIImage*)image
                     action:(SEL)action
                     target:(id)target;

@end
