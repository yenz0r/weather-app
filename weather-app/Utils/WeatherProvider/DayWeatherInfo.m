//
//  DayWeatherInfo.m
//  weather-app
//
//  Created by yenz0redd on 25.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherInfo.h"

@implementation DayWeatherInfo

- (id)initWithDate:(NSDate*)date
          withTemp:(NSNumber*)temp
       withMinTemp:(NSNumber*)minTemp
       withMaxTemp:(NSNumber*)maxTemp
      withHudimity:(NSNumber*)hudiminty {

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
