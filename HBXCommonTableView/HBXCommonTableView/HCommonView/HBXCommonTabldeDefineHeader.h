//
//  HBXCommonTabldeDefineHeader.h
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/20.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#ifndef HBXCommonTabldeDefineHeader_h
#define HBXCommonTabldeDefineHeader_h

#define  KSYSTEM_Width [UIScreen mainScreen].bounds.size.width
#define  KSYSTEM_Height [UIScreen mainScreen].bounds.size.height
#define  KTABLEVIEWCELLDEFAULTHEIGHT 50
#define HBXCOMMONTABLEVIEWCELLHEIGHT 50

typedef NS_ENUM(NSInteger, HBXCommonTableViewCellAccessoryType) {
    HBXCommonTableViewCellAccessoryTypeArrow = 0,
    HBXCommonTableViewCellAccessoryTypeBadge,
    HBXCommonTableViewCellAccessoryTypeArrowText,
};

#define HBXTableViewCellAsstypeArrowName @"cell_arrow"
#define HBXTableViewCellAsstypebadgeName @"new_badge"
#define KArrowImgName @"arrowback-press"
#define KBadgeiconName_BigNumber @"order_badge00_bg"
#define KBadgeiconName_SmallNumber @"order_badge_bg"

#endif /* HBXCommonTabldeDefineHeader_h */
