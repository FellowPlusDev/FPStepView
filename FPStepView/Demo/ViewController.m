//
//  ViewController.m
//  FPStepView
//
//  Created by im61 on 6/7/15.
//  Copyright (c) 2015 Fellow Plus. All rights reserved.
//

#import "FPStepView.h"
#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) FPStepView *stepView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.stepView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (FPStepView *)stepView
{
    if (!_stepView) {
        _stepView = [[FPStepView alloc] initWithFrame:CGRectMake(0, 30, CGRectGetWidth(self.view.frame), 9)];
        _stepView.totalStep = 6;
        _stepView.currentStep = 2;
        _stepView.finishedStepColor = [UIColor redColor];
        _stepView.comingStepColor = [UIColor blueColor];
    }
    
    return _stepView;
}
@end
