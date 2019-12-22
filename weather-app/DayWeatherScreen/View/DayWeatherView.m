//
//  DayWeatherView.m
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherView.h"

@interface DayWeatherView ()

@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *minTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *hudimityLabel;

@end

@implementation DayWeatherView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Day weather";

    [self.presenter viewDidLoad];
}

- (void)showCityName:(NSString *)name {
    self.cityLabel.text = name;
}

- (void)showTempValue:(NSString *)text {
    self.tempLabel.text = text;
}

- (void)showMaxTempValue:(NSString *)text {
    self.maxTempLabel.text = text;
}

- (void)showMinTempValue:(NSString *)text {
    self.minTempLabel.text = text;
}

- (void)showHudimityValue:(NSString *)text {
    self.hudimityLabel.text = text;
}

@end
