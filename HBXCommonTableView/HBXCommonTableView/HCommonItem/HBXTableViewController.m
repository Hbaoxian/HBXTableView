//
//  HBXTableViewController.m
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/19.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#import "HBXTableViewController.h"
#import "HCommonItem.h"
#import "HBXCommontTabelViewCell.h"

#define  KSYSTEM_Width [UIScreen mainScreen].bounds.size.width
#define  KSYSTEM_Height [UIScreen mainScreen].bounds.size.height
#define  KTABLEVIEWCELLDEFAULTHEIGHT 50

@interface HBXTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *group;


@end

@implementation HBXTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view.
}

#pragma mark - public

- (void)groupArray:(NSArray *)array {
    [self.group addObjectsFromArray:array];
}

#pragma mark - dataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HBXCommontTabelViewCell *cell = [HBXCommontTabelViewCell instanceTabelViewCell:tableView];
    NSArray *array = self.group[indexPath.section];
    HCommonItem *item = array[indexPath.row];
    cell.item = item;
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.group.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *array = self.group[section];
    return array.count;
}

#pragma mark - TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    HCommonItem *item = self.group[indexPath.section][indexPath.row];
    if (item.operation) {
        item.operation();
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return KTABLEVIEWCELLDEFAULTHEIGHT;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KSYSTEM_Width, KSYSTEM_Height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc] init];
        
    }
    return _tableView;
}

- (NSMutableArray *)group {
    if (!_group) {
        _group = [[NSMutableArray alloc] init];
    }
    return _group;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
