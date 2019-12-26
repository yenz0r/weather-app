//
//  MonthWeatherPresenter.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "MonthWeatherPresenter.h"

@interface MonthWeatherPresenter ()

@property (strong, nonatomic) MonthWeatherModel* model;
@property (weak, nonatomic) MonthWeatherView* view;

@end

@implementation MonthWeatherPresenter

- (id)initWithModel:(MonthWeatherModel*)model forView:(MonthWeatherView*)view {
    self = [super init];
    if (self) {
        self.model = model;
        self.view = view;
    }
    return self;
}

- (void)viewDidAppear {
}

@end
