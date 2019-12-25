//
//  WeatherProvider.h
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DayWeatherInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeatherProvider : NSObject

typedef void(^dayCompletionBlock)(BOOL status, DayWeatherInfo* info);
typedef void(^monthCompletionBlock)(BOOL status, NSMutableArray<DayWeatherInfo*>* infoArr);

+ (instancetype)shared;
- (id)init;

- (void)getDayWeatherForCity:(NSString*)city withCompletion:(dayCompletionBlock)completion;
- (void)getMonthWeatherInfoForCity:(NSString*)city withCompletion:(monthCompletionBlock)completion;

@end

NS_ASSUME_NONNULL_END
