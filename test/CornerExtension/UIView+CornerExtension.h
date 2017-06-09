//
//  UIView+CornerExtension.h
//  test
//
//  Created by 纪宇伟 on 2017/6/8.
//  Copyright © 2017年 纪宇伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CornerExtension)

/*
 效率最差的解决方案，实测平均fps=20左右
 */

-(void)openCornerModeWithRadius:(CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

@end
