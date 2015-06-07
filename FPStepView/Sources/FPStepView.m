//
//  FPStepView.m
//  FPStepView
//
//  Created by im61 on 6/7/15.
//  Copyright (c) 2015 Fellow Plus. All rights reserved.
//

#import "FPStepView.h"

@implementation FPStepView

- (void)drawRect:(CGRect)rect
{
    NSInteger step = self.totalStep ? : 5;
    NSInteger currentStep = self.currentStep ? : 2;
    
    if (currentStep > step) {
        currentStep = step - 1;
    }
    
    NSInteger separate = step - 1;
    CGFloat stepWidth = round((CGRectGetWidth(self.frame) - separate * 1) / step);
    
    UIColor *finishedStepColor = self.finishedStepColor ? : [UIColor colorWithRed:0.58 green:0.6 blue:0.69 alpha:1.0];
    UIColor *comingStepColor = self.comingStepColor ? : [UIColor colorWithRed:0.89 green:0.9 blue:0.91 alpha:1.0];
    
    const CGFloat* finishedStepColorComponents = CGColorGetComponents(finishedStepColor.CGColor);
    const CGFloat* comingStepColorComponents = CGColorGetComponents(comingStepColor.CGColor);
    
    CGFloat finishedStepColorAlpha = CGColorGetAlpha(finishedStepColor.CGColor);
    CGFloat comingStepColorAlpha = CGColorGetAlpha(comingStepColor.CGColor);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    
    for (NSInteger i = 0; i < step; i ++) {
        if (i < currentStep) {
            // Draw finished step
            CGContextBeginPath(context);
            CGContextSetRGBFillColor(context, finishedStepColorComponents[0], finishedStepColorComponents[1], finishedStepColorComponents[2], finishedStepColorAlpha);
            CGContextMoveToPoint(context, i * (stepWidth + 1), 0);
            CGContextAddLineToPoint(context, i * (stepWidth + 1), CGRectGetHeight(self.frame));
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i * 1, CGRectGetHeight(self.frame));
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i * 1, 0);
            CGContextAddLineToPoint(context, i * (stepWidth + 1), 0);
            CGContextFillPath(context);
            
            // Draw separate line
            CGContextBeginPath(context);
            
            if (i == currentStep - 1) {
                CGContextSetRGBStrokeColor(context, finishedStepColorComponents[0], finishedStepColorComponents[1], finishedStepColorComponents[2], finishedStepColorAlpha);
            } else {
                CGContextSetRGBStrokeColor(context, 1, 1, 1, 1);
            }
            
            CGContextMoveToPoint(context, (i + 1) * stepWidth + i + 0.5, 0);
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i + 0.5, CGRectGetHeight(self.frame));
            CGContextStrokePath(context);
        } else {
            // Draw coming step
            CGContextSetRGBFillColor(context, comingStepColorComponents[0], comingStepColorComponents[1], comingStepColorComponents[2], comingStepColorAlpha);
            CGContextBeginPath(context);
            CGContextMoveToPoint(context, i * (stepWidth + 1), 0);
            CGContextAddLineToPoint(context, i * (stepWidth + 1), CGRectGetHeight(self.frame));
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i * 1, CGRectGetHeight(self.frame));
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i * 1, 0);
            CGContextAddLineToPoint(context, i * (stepWidth + 1), 0);
            CGContextFillPath(context);
            
            // Draw separate line
            CGContextBeginPath(context);
            CGContextSetRGBStrokeColor(context, finishedStepColorComponents[0], finishedStepColorComponents[1], finishedStepColorComponents[2], finishedStepColorAlpha);
            CGContextMoveToPoint(context, (i + 1) * stepWidth + i + 0.5, 0);
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i + 0.5, CGRectGetHeight(self.frame));
            CGContextStrokePath(context);
            
            // Draw top line
            CGContextBeginPath(context);
            CGContextSetRGBStrokeColor(context, finishedStepColorComponents[0], finishedStepColorComponents[1], finishedStepColorComponents[2], finishedStepColorAlpha);
            CGContextMoveToPoint(context, i * (stepWidth + 1), 0.5);
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i, 0.5);
            CGContextStrokePath(context);
            
            // Draw bottom line
            CGContextBeginPath(context);
            CGContextSetRGBStrokeColor(context, finishedStepColorComponents[0], finishedStepColorComponents[1], finishedStepColorComponents[2], finishedStepColorAlpha);
            CGContextMoveToPoint(context, i * (stepWidth + 1), CGRectGetHeight(self.frame) - 0.5);
            CGContextAddLineToPoint(context, (i + 1) * stepWidth + i, CGRectGetHeight(self.frame) - 0.5);
            CGContextStrokePath(context);
            
            // Draw tail
            if (i == step - 1) {
                CGContextBeginPath(context);
                CGContextSetRGBStrokeColor(context, comingStepColorComponents[0], comingStepColorComponents[1], comingStepColorComponents[2], comingStepColorAlpha);
                CGContextMoveToPoint(context, CGRectGetWidth(self.frame) - 0.5, 0.5);
                CGContextAddLineToPoint(context, CGRectGetWidth(self.frame) - 0.5, CGRectGetHeight(self.frame) - 0.5);
                CGContextStrokePath(context);
            }
        }
    }
}

@end
