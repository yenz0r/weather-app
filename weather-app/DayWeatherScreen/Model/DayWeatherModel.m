//
//  DayWeatherModel.m
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherModel.h"
#import "WeatherProvider.h"

@interface DayWeatherModel ()

@end

@implementation DayWeatherModel

- (id)initWithCity:(NSString *)city {
    self = [super init];
    if (self) {
        self.selectedCity = city;
    }
    return self;
}

- (void)getWeatherWithCompletion:(completionBlock)completion {
    [WeatherProvider.shared getDayWeatherForCity:self.selectedCity withCompletion:^(BOOL status, DayWeatherInfo * _Nonnull info) {
        completion(status, info);
    }];
}

@end
