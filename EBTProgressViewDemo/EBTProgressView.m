//
//  EBTProgressView.m
//  EBaoTongDai
//
//  Created by ebaotong on 15/7/1.
//  Copyright (c) 2015年 com.csst. All rights reserved.
//
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
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
    self.backgroundColor =  UIColorFromRGB(0xdedede);
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 3.0;
    
    
    progressView = [[UIView alloc]init];
    progressView.layer.cornerRadius = 3.0f;
    progressView.layer.masksToBounds = YES;
    [progressView setBackgroundColor: self.backgroundColor];
    progressView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:progressView];
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint
                                          constraintWithItem:progressView
                                          attribute:NSLayoutAttributeLeft
                                          relatedBy:NSLayoutRelationEqual
                                          toItem:self
                                          attribute:NSLayoutAttributeLeft
                                          multiplier:1 constant:0];
    
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint
                                         constraintWithItem:progressView
                                         attribute:NSLayoutAttributeTop
                                         relatedBy:NSLayoutRelationEqual
                                         toItem:self
                                         attribute:NSLayoutAttributeTop
                                         multiplier:1 constant:0];
    
    
    
    NSLayoutConstraint *bottomConstraint = [NSLayoutConstraint
                                            constraintWithItem:progressView
                                            attribute:NSLayoutAttributeBottom
                                            relatedBy:NSLayoutRelationEqual
                                            toItem:self
                                            attribute:NSLayoutAttributeBottom
                                            multiplier:1 constant:0];
    [self addConstraints:@[leftConstraint,topConstraint,bottomConstraint]];
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
    [UIView animateWithDuration:0.4 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        
        [self resetWidthConstraint:_progress];
        [progressView setBackgroundColor:UIColorFromRGB(0xE44547)];
        
        [self layoutIfNeeded];
        
        
    } completion:^(BOOL finished) {
        
        
    }];
    
}
- (void)resetWidthConstraint:(CGFloat)multiplier
{
    
    NSLayoutConstraint * widthConstraint = [NSLayoutConstraint
                                            constraintWithItem:progressView
                                            attribute:NSLayoutAttributeWidth
                                            relatedBy:NSLayoutRelationEqual
                                            toItem:self
                                            attribute:NSLayoutAttributeWidth
                                            multiplier:multiplier constant:0];
    [self addConstraint:widthConstraint];
}

@end
