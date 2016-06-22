//
//  TimerModel.h
//  KVOSimpleSample
//
//  Created by user on 2016/6/22.
//  Copyright © 2016年 user. All rights reserved.
//

#import <Foundation/Foundation.h>

// define hardcode property
#define G_TIME_NUMBER_TEXT @"gTimeNumberText"

@interface TimerModel : NSObject

@property (nonatomic,strong) NSString *gTimeNumberText;

+(TimerModel*)sharedInstance;

@end
