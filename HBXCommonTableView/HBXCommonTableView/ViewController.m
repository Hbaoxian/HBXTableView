//
//  ViewController.m
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/19.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#import "ViewController.h"
#import "HBXTableViewController.h"
#import "HCommonItem.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    HCommonItem *item1 = [HCommonItem initWithTitle:@"成功" icon:@"1463646892smqu93776"];
    item1.operation = ^(){
        NSLog(@"hello world");
    };
    item1.badege = @"5";
    item1.subTitle = @"冲进欧洲";
    HCommonItem *item2 = [HCommonItem initWithTitle:@"失败" icon:@"1463646892smqu93776"];
    item1.className = @"UIViewController";
    HCommonItem *item3 = [HCommonItem initWithTitle:@"努力" icon:@"1463646892smqu93776"];
    item3.cellAccessoryType = HBXCommonTableViewCellAccessoryTypeArrow;
    HCommonItem *item4 = [HCommonItem initWithTitle:@"奋进" icon:@"1463646892smqu93776"];
    HCommonItem *item5 = [HCommonItem initWithTitle:@"收获" icon:@"1463646892smqu93776"];
    item5.subTitle = @"积分好礼换不行";
    item2.badege = @"11";
    NSArray *array1 = @[item1, item2, item3];
    NSArray *array2 = @[item4, item5];
    NSArray *array = @[array1, array2];
    
    HBXTableViewController *tableViewController = [[HBXTableViewController alloc] init];
    
    [tableViewController groupArray:array];
    
    [self.navigationController pushViewController:tableViewController animated:YES];
}

@end
