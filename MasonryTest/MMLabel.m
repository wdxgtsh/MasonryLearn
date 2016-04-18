//
//  MMLabel.m
//  MasonryTest
//
//  Created by wdxgtsh on 16/4/19.
//  Copyright © 2016年 wdxgtsh. All rights reserved.
//

#import "MMLabel.h"

@implementation MMLabel


- (CGSize)intrinsicContentSize{
    CGSize size = [super intrinsicContentSize];
    NSLog(@" %@ ", NSStringFromCGSize(size));
    return size;
}

@end
