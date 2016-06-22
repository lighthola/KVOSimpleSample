//
//  ViewController.m
//  KVOSimpleSample
//
//  Created by user on 2016/6/22.
//  Copyright © 2016年 user. All rights reserved.
//

#import "ViewController.h"
#import "TimerModel.h"

@interface ViewController ()
{
    NSInteger kSceondNumber;
    NSTimer *kTimer;
}
@property (weak, nonatomic) IBOutlet UILabel *kTimeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    kTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(changeKTimeLabelText:) userInfo:nil repeats:YES];
    
}

-(void)dealloc {
    
    [kTimer invalidate];
    kTimer = nil;
}

-(void)changeKTimeLabelText:(NSTimer*)timer {
    
    
    [TimerModel sharedInstance].gTimeNumberText = [@(kSceondNumber) stringValue];
    _kTimeLabel.text = [@(kSceondNumber) stringValue];
//    NSLog(@"%ld,%@",kSceondNumber,[TimerModel sharedInstance].gTimeNumberText);
    kSceondNumber++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
