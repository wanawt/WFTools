//
//  WFFactory.m
//  wififace
//
//  Created by 巩姝慧 on 2016/12/8.
//  Copyright © 2016年 menlian. All rights reserved.
//

#import "WFFactory.h"

@implementation WFFactory

+ (UILabel*)labelWithFrame:(CGRect)rect
                  FontSize:(UIFont*)font
                 textColor:(UIColor*)color {
    UILabel* label = [[UILabel alloc]initWithFrame:rect];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.font = font;
    label.textColor = color;
    return label;
}

+ (UILabel*)labelWithFrame:(CGRect)rect
                  FontSize:(UIFont*)font
                 textColor:(UIColor*)color
                      text:(NSString*)text {
    UILabel* label = [[UILabel alloc]initWithFrame:rect];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.font = font;
    label.text = text;
    label.textColor = color;
    return label;
}

+ (UILabel*)labelWithFrame:(CGRect)rect
                  FontSize:(UIFont*)font
                 textColor:(UIColor*)color
           backGroundColor:(UIColor*)backGroundcolor {
    UILabel* label = [[UILabel alloc]initWithFrame:rect];
    label.font = font;
    label.textColor = color;
    label.textAlignment = NSTextAlignmentLeft;
    label.backgroundColor = backGroundcolor;
    return label;
}

+ (UILabel*)labelWithFrame:(CGRect)rect
                  FontSize:(UIFont*)font
                 textColor:(UIColor*)color
             textAlignment:(NSTextAlignment)textAlignment{
    UILabel* label = [[UILabel alloc]initWithFrame:rect];
    label.font = font;
    label.textColor = color;
    label.textAlignment = textAlignment;
    label.backgroundColor = [UIColor clearColor];
    return label;
}

+ (UIImageView*)imageViewWithFrame:(CGRect)rect
                             image:(UIImage*)image {
    UIImageView* imageView = [[UIImageView alloc]initWithFrame:rect];
    if (image) {
        imageView.image = image;
    }
    imageView.userInteractionEnabled = YES;
    return imageView;
}

+ (UIImageView*)imageViewWithFrame:(CGRect)rect
                            image:(UIImage*)image
                            color:(UIColor*)color {
    UIImageView* imageView = [[UIImageView alloc]initWithFrame:rect];
    if (color) {
        imageView.backgroundColor = color;
    }
    if (image) {
        imageView.image = image;
    }
    imageView.userInteractionEnabled = YES;
    return imageView;
}

+ (UIButton*)buttonWithFrame:(CGRect)rect
                      title:(NSString*)title
                   FontSize:(UIFont*)font
                  textColor:(UIColor*)color
                      image:(UIImage*)image
                     action:(SEL)action
                     target:(id)target {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:rect];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    if (font) {
        [button.titleLabel setFont: font];
    }
    if (color) {
        [button setTitleColor:color forState:UIControlStateNormal];
    }
    if (image) {
        [button setImage:image forState:UIControlStateNormal];
    }
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}

@end
