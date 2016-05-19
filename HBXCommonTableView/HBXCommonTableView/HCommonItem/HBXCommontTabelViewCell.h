//
//  HBXCommontTabelViewCell.h
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/19.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HCommonItem;

@interface HBXCommontTabelViewCell : UITableViewCell

+ (nullable instancetype)instanceTabelViewCell:(nullable  UITableView *)tableView;

@property (nonatomic, nonnull, strong) HCommonItem *item;

@end
