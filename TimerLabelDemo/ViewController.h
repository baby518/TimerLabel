//
//  ViewController.h
//  TimerDemo
//
//  Created by zhangchao on 15/1/17.
//  Copyright (c) 2015年 zhangchao. All rights reserved.
//

#import <UIKit/UIKit.h>
// use objective-c
//#import "TimerLabel.h"
// use swift
#import "TimerLabelDemo-Swift.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet TimerLabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *pauseButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
- (IBAction)startButtonClick:(UIButton *)sender;
- (IBAction)pauseButtonClick:(UIButton *)sender;
- (IBAction)resetButtonClick:(UIButton *)sender;


@end

