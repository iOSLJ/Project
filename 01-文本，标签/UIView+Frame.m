
//
//  UIView+Frame.m
//  01-文本，标签
//
//  Created by lanou on 15/12/21.
//  Copyright (c) 2015年 李俊. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
+ (UIView *)createViewWithFrame:(CGRect)frame color:(UIColor *)color
{
    UIView *myView = [[UIView alloc]initWithFrame:frame];
    myView.backgroundColor = color;
    return [myView autorelease];
}

@end
