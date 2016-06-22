//
//  NextViewController.m
//  KVOSimpleSample
//
//  Created by user on 2016/6/22.
//  Copyright © 2016年 user. All rights reserved.
//

#import "NextViewController.h"
#import "TimerModel.h"

@interface NextViewController()
{
    __weak IBOutlet UILabel *kTimeLabel;
}

@end

@implementation NextViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    [self setKVO];
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
    
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [self removeKVO];
}

-(void)setKVO {
    
    [[TimerModel sharedInstance] addObserver:self forKeyPath:G_TIME_NUMBER_TEXT options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
}

-(void)removeKVO {
    
    [[TimerModel sharedInstance] removeObserver:self forKeyPath:G_TIME_NUMBER_TEXT];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    
    if ([keyPath isEqualToString:G_TIME_NUMBER_TEXT]) {
        if ([[TimerModel sharedInstance] gTimeNumberText] != nil) {
            kTimeLabel.text = [TimerModel sharedInstance].gTimeNumberText;
        }
    }
}

@end
