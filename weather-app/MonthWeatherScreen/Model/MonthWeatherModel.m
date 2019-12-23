//
//  MonthWeatherModel.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "MonthWeatherModel.h"

@implementation MonthWeatherModel

- (id)initWithCity:(NSString*)selectedCity {
    self = [super init];
    if (self) {
        self.selectedCity = selectedCity;
    }
    return self;
}

@end
