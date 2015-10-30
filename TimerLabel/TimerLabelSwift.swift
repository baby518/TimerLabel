//
//  TimerLabelSwift.swift
//  TimerLabelDemo
//
//  Created by zhangchao on 15/10/30.
//  Copyright © 2015年 zhangchao. All rights reserved.
//

import Foundation
import UIKit

class TimerLabel: UILabel {
    private var mTimer = NSTimer() as NSTimer;
    private var mStartedDate = NSDate() as NSDate;

// default is 'internal'
    internal var curTimeInterval = NSTimeInterval() as NSTimeInterval;
    var lastTimeInterval = NSTimeInterval() as NSTimeInterval;
    var isInitialized = false;
    var isTimerRunning = false;

    func updateLabel() {
        curTimeInterval = floor(fabs(mStartedDate.timeIntervalSinceNow) + 0.5);
        self.text = self.formatTimerString(timeInterval: (lastTimeInterval + curTimeInterval));
    }

    func initTimer() {
        NSLog("initTimer");
//        if (mTimer != nil) {
        self.resetTimer();
//        }

        mTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateLabel", userInfo: nil, repeats: true);
        mTimer.fireDate = NSDate.distantFuture(); // pause
        isInitialized = true;
    }

    func startTimer() {
        if (!isTimerRunning) {
            if (!isInitialized) {
                self.initTimer();
            }
            mTimer.fireDate = NSDate.distantPast(); // start
            mStartedDate = NSDate();
            isTimerRunning = true;
        }
    }

    func pauseTimer() {
        mTimer.fireDate = NSDate.distantFuture(); // pause
        lastTimeInterval = lastTimeInterval + curTimeInterval;
        isTimerRunning = false;
    }

    func resetTimer() {
        mTimer.invalidate();
//        mTimer = nil;
        self.text = self.formatTimerString(timeInterval: 0);
        isTimerRunning = false;
        isInitialized = false;
        lastTimeInterval = 0;
        curTimeInterval = 0;
    }

    func formatTimerString(timeInterval ti: NSTimeInterval) -> String {
        let hour = ti / 3600 % 100;
        let minute = ti / 60 % 60;
        let second = ti % 60;

        let result = String.localizedStringWithFormat("%02d:%02d:%02d", hour, minute, second);
        return result;
    }
}