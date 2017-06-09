//
//  PhotoCell.m
//  test
//
//  Created by 纪宇伟 on 2017/6/8.
//  Copyright © 2017年 纪宇伟. All rights reserved.
//

#import "PhotoCell.h"
//#import "CornerManager.h"
#import "UIImageView+CornerRadius.h"

@implementation PhotoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

//    [self setNeedsLayout];
//    [self layoutIfNeeded];
/*
    最原始的方式，实测效果最好，平均fps可达到50左右
 */
    
    _imgView1.layer.cornerRadius=10;
    _imgView1.layer.masksToBounds=YES;
    _imgView1.layer.borderColor=[UIColor grayColor].CGColor;
    _imgView1.layer.borderWidth=0.5;

    
    _imgView2.layer.cornerRadius=20;
    _imgView2.layer.masksToBounds=YES;
    _imgView2.layer.borderColor=[UIColor grayColor].CGColor;
    _imgView2.layer.borderWidth=0.5;

    
    _imgView3.layer.cornerRadius=35;
    _imgView3.layer.masksToBounds=YES;
    _imgView3.layer.borderColor=[UIColor grayColor].CGColor;
    _imgView3.layer.borderWidth=0.5;

    _button.layer.cornerRadius=5;
    _button.layer.masksToBounds=YES;
    _button.layer.borderColor=[UIColor blueColor].CGColor;
    _button.layer.borderWidth=0.5;
    
    [_button setTitle:@"按钮" forState:UIControlStateNormal];

}

//-(void)layoutSubviews
//{
//    [_imgView1 zy_cornerRadiusAdvance:10 rectCornerType:UIRectCornerAllCorners];
//    [_imgView2 zy_cornerRadiusAdvance:20 rectCornerType:UIRectCornerAllCorners];
//    [_imgView3 zy_cornerRadiusAdvance:35 rectCornerType:UIRectCornerAllCorners];
//}

-(void)setImgName:(NSString *)imgName
{
    if (_imgName != imgName) {
        _imgName=imgName;
    }
    
    _imgView1.image=[UIImage imageNamed:imgName];
    _imgView2.image=[UIImage imageNamed:imgName];
    _imgView3.image=[UIImage imageNamed:imgName];
    
    
//    _button.backgroundColor=[UIColor redColor];
//    [_button dr_addCornerRadius:5 borderWidth:0.5 backgroundColor:[UIColor whiteColor] borderCorlor:[UIColor grayColor]];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
