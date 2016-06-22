//
//  TimerModel.m
//  KVOSimpleSample
//
//  Created by user on 2016/6/22.
//  Copyright © 2016年 user. All rights reserved.
//

#import "TimerModel.h"

static TimerModel *timerModel;

@implementation TimerModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gTimeNumberText = @"0";
    }
    return self;
}

+(TimerModel*)sharedInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        timerModel = [self new];
        
    });
    return timerModel;
}


@end
