//
//  HistoryTableViewCell.m
//  weather-app
//
//  Created by yenz0redd on 26.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "HistoryTableViewCell.h"

@implementation HistoryTableViewCell

- (void)setupDateWithText:(NSString *)text {
    self.dateLabel.text = text;
}

- (void)setupTempWithText:(NSString *)text {
    self.tempLabel.text = text;
}

- (void)setupCityNameWithText:(NSString *)text {
    self.cityNameLabel.text = text;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.cityNameLabel.text = @"City";
    self.tempLabel.text = @"Temperature";
    self.dateLabel.text = @"Date";
}

@end
