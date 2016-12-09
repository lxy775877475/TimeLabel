//
//  UILabel+Time.m
//  testSecondTime
//
//  Created by Xinyu on 16/7/21.
//  Copyright © 2016年 . All rights reserved.
//

#import "UILabel+Time.h"

#import "objc/runtime.h"


static char TimeInfo;

static char Timer;

@implementation UILabel (Time)


/*  runtime  */

-(void)setTotalTime:(NSNumber*)totalTime {
    objc_setAssociatedObject(self, &TimeInfo,totalTime, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(void)setTimer:(NSTimer *)timer {
    objc_setAssociatedObject(self,&Timer,timer,OBJC_ASSOCIATION_RETAIN);
}

- (NSTimer *)timer {
    return  objc_getAssociatedObject(self,&Timer);
}

-(NSNumber *)totalTime {
    return  objc_getAssociatedObject(self,&TimeInfo);
}

/* 设置方法 */

- (void)setTimeTotal:(NSInteger)timeInterval {
    
    self.totalTime = [NSNumber numberWithInteger:timeInterval  *100];
    self.timer  = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(doSomething) userInfo:nil repeats:YES];
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    [runLoop addTimer:self.timer forMode:NSRunLoopCommonModes];
}

-(void)startTime {
    [self.timer fire];
}

-(void)endTime {
    [self.timer invalidate];
}

//定时器执行 的方法
- (void)doSomething {
    NSInteger time = [self.totalTime integerValue];
    
    if (time <= 0) {
        [self.timer invalidate];
        return;
    }
    
    time -- ;
    NSString *string = [NSString stringWithFormat:@"%02d:%02d:%02d",((int)time/6000)%60,((int)time/100)%60,(int)time%100];
    
    [self setText:string];
    
    self.totalTime = [NSNumber numberWithInteger:time];
}


@end
