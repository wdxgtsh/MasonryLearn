//
//  Base1Controller.m
//  MasonryTest
//
//  Created by wdxgtsh on 16/4/18.
//  Copyright © 2016年 wdxgtsh. All rights reserved.
//

#import "Base1Controller.h"
#import "MMView.h"
#import "MMLabel.h"

@implementation Base1Controller

- (void)viewDidLoad{
    [super viewDidLoad];
    
    UIView * v1 = ({
        UIView * view = [UIView new];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(50, 50));
            make.left.top.equalTo(self.view);
        }];
        view.backgroundColor = [UIColor blueColor];
        
        view;
    });
    
    UIView * v2 = ({
        UIView * view = [UIView new];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(50, 50));
            make.left.equalTo(v1.mas_right);
            make.top.equalTo(v1.mas_bottom);
        }];
        view.backgroundColor = [UIColor blueColor];
        view.layoutMargins = UIEdgeInsetsMake(-20, -20, -20, -20);
        view;
    });
    
//    
//    UIView * v3 = ({
//        UIView * view = [UIView new];
//        [self.view addSubview:view];
//        
//        [view mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.size.mas_equalTo(CGSizeMake(50, 50));
//            make.centerY.equalTo(v2);
//            make.left.equalTo(v2.mas_rightMargin);
//        }];
//        view.backgroundColor = [UIColor redColor];
//        view;
//    });
    
    
//    MMView * v3 = ({
//        MMView * view = [MMView new];
//        [self.view addSubview:view];
//        
//        [view mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.center.equalTo(self.view);
//        }];
//        
//        view.innerSize = CGSizeMake(100, 100);
//        view.backgroundColor = [UIColor greenColor];
//        
//        view;
//    });
    
    MMLabel * v4 = ({
        MMLabel * label = [MMLabel new];
        [self.view addSubview:label];
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.view);
            make.width.equalTo(@150);
        }];
        label.text = @"sgdjagdgakdgkalgsdkgsldgsgdladgas-----";
        label.numberOfLines = 0;
        label.backgroundColor = [UIColor darkGrayColor];
        
        label;
    });


    
}


@end
