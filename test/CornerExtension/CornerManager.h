//
//  CornerManager.h
//  test
//
//  Created by 纪宇伟 on 2017/6/9.
//  Copyright © 2017年 纪宇伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CornerManager : NSObject

@end

/*
 所有针对UIView做的圆角处理都会导致离屏渲染
 所有针对UIImage做的圆角处理都会导致混合图层
 以下解决方案都是针对UIImage所做的圆角处理，规避离屏渲染，但会出现混合图层
 具体那种方案效率更高需要参考Instruments的测试数据来决定
 iOS10.3 iPhone6s环境下，以下方案实测fps都没有直接设置cornerRadius高。
 */

#pragma mark - UIView (ViewCornerRounder)

@interface UIView (ViewCornerRounder)

/**
 *  给label, button, textfield等添加圆角，默认borderWidth = 1.0f, backgroundColor = whiteColor, borderColor = blackColor
 *  使用绘图画出圆角图形放在UIImageView上插入View最底层,对View的背景色有要求

 *  @param radius 弧度
 */
- (void)dr_addCornerRadius:(CGFloat)radius;


/**
 *  给label, button, textfield等添加圆角, 可以自定义其它的属性
 *
 *  @param radius          弧度
 *  @param borderWidth     borderWidth
 *  @param backgroundColor backgroundColor
 *  @param borderColor     borderColor
 */
- (void)dr_addCornerRadius:(CGFloat)radius
               borderWidth:(CGFloat)borderWidth
           backgroundColor:(UIColor *)backgroundColor
              borderCorlor:(UIColor *)borderColor;

@end

#pragma mark - UIImageView (CornerRounder)

@interface UIImageView (CornerRounder)

/**
 *  给imageView做圆角, 无边框
 *
 *  @param radius 圆角弧度
 */

- (void)dr_addCornerRadius:(CGFloat)radius;

@end


@interface UIImage (ImageCornerRounder)

/**
 *  使用UIBezierPath绘画一个Image，并对Image进行裁边处理
 *
 *  @param radius 弧度
 *  @param size   size
 *
 *  @return image
 */

- (UIImage*)dr_imageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size;

@end
