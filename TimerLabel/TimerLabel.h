//
// Created by zhangchao on 15/1/17.
// Copyright (c) 2015 zhangchao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TimerLabel : UILabel

@property (nonatomic, assign, readonly) NSTimeInterval curTimeInterval;
@property (nonatomic, assign, readonly) NSTimeInterval lastTimeInterval;
@property (nonatomic, assign, readonly) bool isInitialized;
@property (nonatomic, assign, readonly) bool isTimerRunning;

- (void)updateLabel;
- (void)initTimer;
- (void)startTimer;
- (void)pauseTimer;
- (void)resetTimer;
- (NSString *)formatTimerString :(int) timeInterval;
@end