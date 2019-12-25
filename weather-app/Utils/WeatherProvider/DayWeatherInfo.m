//
//  DayWeatherInfo.m
//  weather-app
//
//  Created by yenz0redd on 25.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherInfo.h"

@implementation DayWeatherInfo

- (id)initWithDate:(NSDate *)date withTemp:(double)temp withMinTemp:(double)minTemp withMaxTemp:(double)maxTemp withHudimity:(double)hudiminty {

    self = [super init];
    if (self) {
        self.date = date;
        self.temp = temp;
        self.minTemp = minTemp;
        self.maxTemp = maxTemp;
        self.hudimity = hudiminty;
    }
    return self;
}

@end
