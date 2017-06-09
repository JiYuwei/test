//
//  UIView+CornerExtension.m
//  test
//
//  Created by 纪宇伟 on 2017/6/8.
//  Copyright © 2017年 纪宇伟. All rights reserved.
//

#import "UIView+CornerExtension.h"

@implementation UIView (CornerExtension)


-(void)openCornerModeWithRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor
{
    UIBezierPath *maskPath=[UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:radius];
    
    CAShapeLayer *maskLayer=[CAShapeLayer layer];
    maskLayer.frame=self.bounds;
    maskLayer.path=maskPath.CGPath;
    
    self.layer.mask=maskLayer;
    
    if (borderWidth>0) {
        CAShapeLayer *borderLayer = [CAShapeLayer layer];
        CGFloat halfWidth = borderWidth;
        CGRect f =CGRectMake(halfWidth, halfWidth,CGRectGetWidth(self.bounds) - borderWidth*2,CGRectGetHeight(self.bounds) - borderWidth*2);
        
        borderLayer.path = [UIBezierPath bezierPathWithRoundedRect:f cornerRadius:radius].CGPath;
        borderLayer.fillColor = [UIColor clearColor].CGColor;
        borderLayer.strokeColor = borderColor.CGColor;
        borderLayer.lineWidth = borderWidth;
        borderLayer.frame = CGRectMake(0,0,CGRectGetWidth(f),CGRectGetHeight(f));
        [self.layer addSublayer:borderLayer];
    }
}


@end
