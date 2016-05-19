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
    HCommonItem *item1 = [HCommonItem initWithTitle:@"成功"];
    item1.operation = ^(){
        NSLog(@"hello world");
    };
    HCommonItem *item2 = [HCommonItem initWithTitle:@"失败"];
    item1.className = @"UIViewController";
    HCommonItem *item3 = [HCommonItem initWithTitle:@"努力"];
    HCommonItem *item4 = [HCommonItem initWithTitle:@"奋进"];
    HCommonItem *item5 = [HCommonItem initWithTitle:@"收获"];

    NSArray *array1 = @[item1, item2, item3];
    NSArray *array2 = @[item4, item5];
    NSArray *array = @[array1, array2];
    
    HBXTableViewController *tableViewController = [[HBXTableViewController alloc] init];
    
    [tableViewController groupArray:array];
    
    [self.navigationController pushViewController:tableViewController animated:YES];
}

@end
