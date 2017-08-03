//
//  CountGlobalTableViewCell.m
//  HLBJGJJ
//
//  Created by LHL on 2017/8/3.
//  Copyright © 2017年 andforce. All rights reserved.
//

#import "CountGlobalTableViewCell.h"

#define CountTableViewCellHeight 80

@interface CountGlobalTableViewCell()

@property (nonatomic, strong) UILabel *tipAmountLabel;
@property (nonatomic, strong) UILabel *amountLabel;
@property (nonatomic, strong) UILabel *lastTimeLabel;

@end

@implementation CountGlobalTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createUI];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self createUI];
}

- (void)createUI{
    
    self.tipAmountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.tipAmountLabel.font = [UIFont systemFontOfSize:17];
    self.tipAmountLabel.textColor = [UIColor blackColor];
    [self.contentView addSubview:self.tipAmountLabel];
    
    self.amountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.amountLabel.font = [UIFont systemFontOfSize:24];
    self.amountLabel.textColor = [UIColor blueColor];
    [self.contentView addSubview:self.amountLabel];
    
    self.lastTimeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    self.lastTimeLabel.font = [UIFont systemFontOfSize:15];
    self.lastTimeLabel.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:self.lastTimeLabel];
    
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.tipAmountLabel.frame = CGRectMake(15, 15, 75, 30);
    self.amountLabel.frame = CGRectMake(90, 15, CGRectGetWidth(self.bounds)-100, 30);
    self.lastTimeLabel.frame = CGRectMake(15, CGRectGetMaxY(self.amountLabel.bounds)+20, CGRectGetWidth(self.bounds)- 30, 40);
}

- (void)setObject:(NSDictionary *)object{
    if ([object isKindOfClass:[NSDictionary class]]) {
        _object = object;
        self.tipAmountLabel.text = object[@"tipAmount"];
        self.amountLabel.text = [NSString stringWithFormat:@"%@元",object[@"amount"]];
        self.lastTimeLabel.text = object[@"lastTime"];
    }
}

@end
