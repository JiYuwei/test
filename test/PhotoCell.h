//
//  PhotoCell.h
//  test
//
//  Created by 纪宇伟 on 2017/6/8.
//  Copyright © 2017年 纪宇伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgView1;
@property (weak, nonatomic) IBOutlet UIImageView *imgView2;
@property (weak, nonatomic) IBOutlet UIImageView *imgView3;
@property (weak, nonatomic) IBOutlet UIButton *button;


@property(nonatomic,copy)NSString *imgName;

@end
