//
//  HCommonItem.m
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/19.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#import "HCommonItem.h"

@implementation HCommonItem
+ (nullable HCommonItem *)initWithTitle:(nullable NSString *)title {
    HCommonItem *item = [[HCommonItem alloc] init];
    item.title = title;
    return item;
}
+ (nullable HCommonItem *)initWithTitle:(nullable NSString *)title icon:(nullable NSString *)icon {
    HCommonItem *item = [HCommonItem initWithTitle:title];
    item.iconImg = icon;
    return item;
}
@end
