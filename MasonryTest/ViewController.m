//
//  ViewController.m
//  MasonryTest
//
//  Created by wdxgtsh on 16/4/18.
//  Copyright © 2016年 wdxgtsh. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>

@interface ViewController ()
<
UITableViewDataSource,
UITableViewDelegate
>

@property(nonatomic, strong) UITableView * tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = ({
        UITableView * view = [UITableView new];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.view);
        }];
        view.delegate = self;
        view.dataSource = self;
        view;
    });
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark |--- UITableViewDelegate & UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cellIdentifier = @"cellIdentifier";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Example%zd", indexPath.row + 1];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Class cls = NSClassFromString([NSString stringWithFormat:@"Base%zdController", indexPath.row + 1]);
    if (cls) {
        [self.navigationController pushViewController:[cls new] animated:YES];
    }
    
}


@end
