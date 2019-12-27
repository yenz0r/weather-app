//
//  DatabaseManager.h
//  weather-app
//
//  Created by yenz0redd on 27.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DayWeather.h"

NS_ASSUME_NONNULL_BEGIN

@interface DatabaseManager : NSObject

+ (instancetype)shared;
- (id)init;

- (void)saveDayWeather:(DayWeather*)dayWeather;
- (NSMutableArray<DayWeather*>*)getDayWeatherHistory;
- (void)deleteAllObjects;

@end

NS_ASSUME_NONNULL_END
