//
//  HCommonItem.h
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/19.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HBXCommonTabldeDefineHeader.h"

@interface HCommonItem : NSObject

@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *iconImg;
@property (nullable, nonatomic, copy) NSString *subTitle;
@property (nullable, nonatomic, copy) void (^operation)();
@property (nullable, nonatomic, copy) NSString *badege;
@property (nullable, nonatomic, copy) NSString *className;//一般用于控制器
@property (nonatomic, assign)         HBXCommonTableViewCellAccessoryType cellAccessoryType;


+ (nullable HCommonItem *)initWithTitle:(nullable NSString *)title;
+ (nullable HCommonItem *)initWithTitle:(nullable NSString *)title icon:(nullable NSString *)icon;



@end
