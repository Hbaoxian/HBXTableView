//
//  HBXCommontTabelViewCell.m
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/19.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#import "HBXCommontTabelViewCell.h"

#import "HCommonItem.h"

@implementation HBXCommontTabelViewCell

+ (nullable instancetype)instanceTabelViewCell:(nullable UITableView *)tableView {
    static NSString *Identifier = @"commonCell";
    HBXCommontTabelViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    if (!cell) {
        cell = [[HBXCommontTabelViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identifier];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

- (void)setItem:(HCommonItem *)item {
    _item = item;
    self.textLabel.text = item.title;
    self.imageView.image = [UIImage imageNamed:item.iconImg];
    self.detailTextLabel.text = item.subTitle;
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
