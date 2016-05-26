//
//  HBXCommontTabelViewCell.m
//  HBXCommonTableView
//
//  Created by 黄保贤 on 16/5/19.
//  Copyright © 2016年 黄保贤. All rights reserved.
//

#import "HBXCommontTabelViewCell.h"
#import "HBXCommonTabldeDefineHeader.h"
#import "HCommonItem.h"


#define KLeftDistance 10

@interface HBXCommontTabelViewCell ()

@property (nonnull, nonatomic ,strong) UIView *sepLine;
@property (nonatomic, strong)          UIImageView *ArrowImgView;
@property (nonatomic, strong)          UILabel *badgeLabel;
@property (nonatomic, strong)          UIImageView *badgeView;

@end



@implementation HBXCommontTabelViewCell

+ (nullable instancetype)instanceTabelViewCell:(nullable UITableView *)tableView {
    static NSString *Identifier = @"commonCell";
    HBXCommontTabelViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    if (!cell) {
        cell = [[HBXCommontTabelViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Identifier];
    }
    return cell;
}

+ (CGFloat)TableViewCellHeight {
    return HBXCOMMONTABLEVIEWCELLHEIGHT;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self defaultBuild];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setItem:(HCommonItem *)item {
    _item = item;
    // common Setting
    if (item.title) {
        self.textLabel.text = item.title;
    }
    if (item.iconImg) {
        self.imageView.image = [UIImage imageNamed:item.iconImg];
    }
    if (item.subTitle) {
        self.detailTextLabel.text = item.subTitle;
    }
    if (item.badege && item.badege.integerValue > 0) {
        self.accessoryView = self.badgeView;
        [self updateBadgeFrame];
    }else if(item.cellAccessoryType == HBXCommonTableViewCellAccessoryTypeArrow) {
        self.accessoryView = self.ArrowImgView;
    }else {
        self.accessoryView = nil;
    }
}


- (void)updateBadgeFrame {
    self.badgeLabel.text = _item.badege;
    [self.badgeLabel sizeToFit];
    
    if (_item.badege.integerValue > 9) {
         UIImage *image = [UIImage imageNamed:KBadgeiconName_BigNumber];
        self.badgeView.size = image.size;
        self.badgeView.image = image;
    }else {
         UIImage *image = [UIImage imageNamed:KBadgeiconName_SmallNumber];
        self.badgeView.size = image.size;
        self.badgeView.image = image;
    }
    self.badgeLabel.frame = self.badgeView.bounds;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)defaultBuild {
    [self addSubview:self.sepLine];
    self.detailTextLabel.textColor = [UIColor colorWithRed:90.f/250.f green:90.f/250.f blue:90.f/250.f alpha:1.f];
    

}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.textLabel sizeToFit];
    self.sepLine.frame = CGRectMake(KLeftDistance, HBXCOMMONTABLEVIEWCELLHEIGHT - 0.5, KSYSTEM_Width - 10 , 0.5);
    self.imageView.frame = CGRectMake(KLeftDistance, KLeftDistance / 2,  HBXCOMMONTABLEVIEWCELLHEIGHT - 10 , HBXCOMMONTABLEVIEWCELLHEIGHT - 10);
    self.textLabel.frame = CGRectMake(CGRectGetMaxX(self.imageView.frame) + 20, (HBXCOMMONTABLEVIEWCELLHEIGHT - 30)/2, self.textLabel.frame.size.width, 30);
    self.detailTextLabel.frame = CGRectMake(self.textLabel.frame.origin.x + self.textLabel.frame.size.width + 10, (HBXCOMMONTABLEVIEWCELLHEIGHT - 20)/2, 200, 20);
}

#pragma mark - getter

- (UIImageView *)ArrowImgView {
    if (!_ArrowImgView) {
        _ArrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:HBXTableViewCellAsstypeArrowName]];
    }
    return _ArrowImgView;
}
- (UILabel *)badgeLabel {
    if (!_badgeLabel) {
        _badgeLabel = [[UILabel alloc] init];
        _badgeLabel.font = [UIFont systemFontOfSize:12.f];
        _badgeLabel.textColor = [UIColor whiteColor];
        _badgeLabel.textAlignment = NSTextAlignmentCenter;
        _badgeLabel.textColor = [UIColor colorWithRed:220 green:220 blue:220 alpha:1.0];
    }
    return _badgeLabel;
}
- (UIImageView *)badgeView {
    if (!_badgeView) {
        UIImage *image = [UIImage imageNamed:HBXTableViewCellAsstypebadgeName];
        _badgeView = [[UIImageView alloc] initWithImage:image];
        [_badgeView addSubview:self.badgeLabel];
        self.badgeView.frame = _badgeLabel.bounds;
    }
    return _badgeView;
}
- (UIView *)sepLine {
    if (!_sepLine) {
        _sepLine = [[UIView alloc] init];
        _sepLine.backgroundColor = [UIColor colorWithRed:220.f/250.f green:220.f/250.f blue:220.f/250.f alpha:1.f];
    }
    return _sepLine;
}

@end
