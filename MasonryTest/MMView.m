//
//  MMView.m
//  MasonryTest
//
//  Created by wdxgtsh on 16/4/19.
//  Copyright © 2016年 wdxgtsh. All rights reserved.
//

#import "MMView.h"

@implementation MMView

- (CGSize)intrinsicContentSize{
    return self.innerSize;
}


//- (CGSize)intrinsicContentSize{
//    CGSize size = [super intrinsicContentSize];
//    NSLog(@"%@", NSStringFromCGSize(size));
//    return [super intrinsicContentSize];
//}

@end
