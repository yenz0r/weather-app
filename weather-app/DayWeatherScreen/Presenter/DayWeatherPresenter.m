//
//  DayWeatherPresenter.m
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherPresenter.h"
#import "DayWeatherModel.h"
#import "DayWeatherView.h"

@interface DayWeatherPresenter ()

@property (strong, nonatomic) DayWeatherModel* model;
@property (weak, nonatomic) DayWeatherView* view;

@end

@implementation DayWeatherPresenter

- (id)initWithModel:(DayWeatherModel *)model forView:(DayWeatherView *)view{
    self = [super init];
    if (self) {
        self.view = view;
        self.model = model;
    }
    return self;
}

- (void)viewDidLoad {
    [self.view showCityName:self.model.selectedCity];
}

@end
