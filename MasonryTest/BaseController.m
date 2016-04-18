//
//  BaseController.m
//  MasonryTest
//
//  Created by wdxgtsh on 16/4/18.
//  Copyright © 2016年 wdxgtsh. All rights reserved.
//

#import "BaseController.h"

@implementation BaseController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout =  UIRectEdgeNone;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}


@end
