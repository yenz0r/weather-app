//
//  HistoryProvider.m
//  weather-app
//
//  Created by yenz0redd on 27.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "HistoryProvider.h"

@implementation HistoryProvider

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

+ (instancetype)shared {
    static HistoryProvider *provider = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        provider = [[HistoryProvider alloc] init];
    });
    return provider;
}

- (NSMutableArray<DayWeather*>*)getAllNotes {
    return [DatabaseManager.shared getDayWeatherHistory];
}

- (void)addHistoryWithDate:(NSDate *)date
                   forCity:(NSString *)city
                  withTemp:(NSString*)temp {
    DayWeather* dayWeather = [[DayWeather alloc] init];
    dayWeather.city = city;
    dayWeather.temp = temp;
    dayWeather.requestDate = date;
    [DatabaseManager.shared saveDayWeather:dayWeather];
}

- (void)deleteAllHistory {
    [DatabaseManager.shared deleteAllObjects];
}

@end
