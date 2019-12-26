//
//  MonthWeatherModel.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "MonthWeatherModel.h"
#import "WeatherProvider.h"

@implementation MonthWeatherModel

- (id)initWithCity:(NSString*)selectedCity {
    self = [super init];
    if (self) {
        self.selectedCity = selectedCity;
    }
    return self;
}

- (void)getWeatherWithCompletion:(monthCompletionBlock)completion {
    [WeatherProvider.shared getMonthWeatherInfoForCity:self.selectedCity withCompletion:^(BOOL status, NSMutableArray<DayWeatherInfo *> * _Nonnull infoArr) {
        completion(true, infoArr);
    }];
}

@end
