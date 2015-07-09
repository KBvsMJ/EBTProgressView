//
//  EBTProgressView.h
//  EBaoTongDai
//
//  Created by ebaotong on 15/7/1.
//  Copyright (c) 2015年 com.csst. All rights reserved.
//
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import <UIKit/UIKit.h>
/**
 *  水平方向进度条
 */
@interface EBTProgressView : UIView
/**
 *  设置进度值0-1.0之间
 */
@property(nonatomic,assign) CGFloat progress;
@end
