//
//  WeatherProvider.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "WeatherProvider.h"
#import "NetworkManager.h"

@interface WeatherProvider ()

@end

@implementation WeatherProvider

- (instancetype)init
{
    self = [super init];
    return self;
}

+ (instancetype)shared {
    static WeatherProvider *provider = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        provider = [[WeatherProvider alloc] init];
    });
    return provider;
}

- (void)getDayWeatherForCity:(NSString *)city withCompletion:(nonnull dayCompletionBlock)completion {
    completion(true, [[DayWeatherInfo alloc] initWithDate:nil
                                       withTemp:0
                                    withMinTemp:0
                                    withMaxTemp:0
                                   withHudimity:0]);
}

- (void)getMonthWeatherInfoForCity:(NSString *)city withCompletion:(nonnull monthCompletionBlock)completion {
    NSMutableArray<DayWeatherInfo*>* resultArray = [[NSMutableArray alloc] init];
    DayWeatherInfo* info = [[DayWeatherInfo alloc] initWithDate:nil
        withTemp:0
     withMinTemp:0
     withMaxTemp:0
    withHudimity:0];
    [resultArray addObject:info];

    completion(true, resultArray);
}

@end
