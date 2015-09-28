//
//  ViewController.m
//  EBTProgressViewDemo
//
//  Created by MJ on 15/7/9.
//  Copyright (c) 2015年 TJ. All rights reserved.
//

#import "ViewController.h"
#import "EBTProgressView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet EBTProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClick:(UIButton *)sender {
    _progressView.progress = 0.98;

}

@end
