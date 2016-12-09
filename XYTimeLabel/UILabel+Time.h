//
//  UILabel+Time.h
//  testSecondTime
//
//  Created by Xinyu on 16/7/21.
//  Copyright © 2016年 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Time)

@property (nonatomic,copy) NSTimer *timer;

@property (nonatomic,retain) NSNumber *totalTime;

/**
 *  设置总计时
 *
 *  @param timeInterval <#timeInterval description#>
 */
- (void)setTimeTotal:(NSInteger)timeInterval;

/**
 *  开始倒计时
 */
-(void)startTime;

/**
 *  结束倒计时
 */
-(void)endTime;

@end
