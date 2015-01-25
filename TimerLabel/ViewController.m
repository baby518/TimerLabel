//
//  ViewController.m
//  TimerDemo
//
//  Created by zhangchao on 15/1/17.
//  Copyright (c) 2015年 zhangchao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonClick:(UIButton *)sender {
    [_timerLabel startTimer];
}

- (IBAction)pauseButtonClick:(UIButton *)sender {
    [_timerLabel pauseTimer];
}

- (IBAction)resetButtonClick:(UIButton *)sender {
    [_timerLabel resetTimer];
}
@end
