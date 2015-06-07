//
//  FPStepView.h
//  FPStepView
//
//  Created by im61 on 6/7/15.
//  Copyright (c) 2015 Fellow Plus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FPStepView : UIView

@property (nonatomic, assign) NSInteger totalStep;
@property (nonatomic, assign) NSInteger currentStep;
@property (nonatomic, strong) UIColor *finishedStepColor;
@property (nonatomic, strong) UIColor *comingStepColor;

@end
