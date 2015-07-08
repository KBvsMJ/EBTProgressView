//
//  EBTProgressView.m
//  EBaoTongDai
//
//  Created by ebaotong on 15/7/1.
//  Copyright (c) 2015年 com.csst. All rights reserved.
//

#import "EBTProgressView.h"
@interface EBTProgressView ()
{
    UIView *progressView;//进度view
}
@end
@implementation EBTProgressView
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = UIColorFromRGB(0xdedede);
    }
    return self;

}
- (void)awakeFromNib
{
    [super awakeFromNib];
    self.backgroundColor = UIColorFromRGB(0xdedede);
    progressView = [[UIView alloc]init];
    progressView.frame = CGRectMake(0, 0, 0, self.bounds.size.height);
    [self addSubview:progressView];
}

- (void)setProgress:(CGFloat)progress
{
    if (progress<0.f)
    {
        _progress = 0.f;
    }
    else if (progress<=1.f)
    {
        _progress = progress;
    }
    else
    {
        _progress = 1.f;
    }
    [UIView animateWithDuration:0.8 delay:0.1 options:UIViewAnimationOptionCurveEaseOut animations:^{
        /**设置进度条的width宽度*/
        CGRect newRect = progressView.frame;
        newRect.size.width = _progress*self.bounds.size.width;
        progressView.frame = newRect;
      [progressView setBackgroundColor:UIColorFromRGB(0xec5d5f)];
        
    } completion:^(BOOL finished) {
        
        
    }];
    
}
@end
