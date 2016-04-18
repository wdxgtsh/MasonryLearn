//
//  Base2Controller.m
//  MasonryTest
//
//  Created by wdxgtsh on 16/4/19.
//  Copyright © 2016年 wdxgtsh. All rights reserved.
//

#import "Base2Controller.h"

@implementation Base2Controller

/*
  sizeofset : width height
  centerOffset : centerx  centery
  valueoffset : 一个封装  
 
  multipliedBy : 倍数关系
  dividedBy : multipliedBy的倒数
 
 Priority
 Priority 自己设置
 PriorityLow
 PriorityMedium
 PriorityHight
 
 控件的缺省大小  作用与UILabel
 intrinsicContentSize 
 
 Content Priority 
 
 
 60:00
 
 
 
 */

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIView * playerView = ({
        UIView * view = [UIView new];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.equalTo(self.view);
            make.height.equalTo(view.mas_width).multipliedBy(9.0f/16.0f);
        }];
        view.backgroundColor = [UIColor blackColor];
        view;
    });
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

@end
