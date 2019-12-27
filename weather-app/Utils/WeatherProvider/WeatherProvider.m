//
//  WeatherProvider.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "WeatherProvider.h"
#import "NetworkManager.h"
#import "HistoryProvider.h"

@interface WeatherProvider ()

@property (strong, nonatomic) NSString* dayWeatherPath;
@property (strong, nonatomic) NSString* monthWeatherURL;
@property (strong, nonatomic) NSString* appidPath;

@end

@implementation WeatherProvider

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dayWeatherPath = @"http://api.openweathermap.org/data/2.5/weather?q=";
        self.monthWeatherURL = @"pro.openweathermap.org/data/2.5/climate/month?q=";
        self.appidPath = @"&appid=3fb48b5fd9d087b6aef720e8522628b1";
    }
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
    NSString* path = [NSString stringWithFormat:@"%@%@%@",
                      self.dayWeatherPath,
                      city,
                      self.appidPath];
    [NetworkManager.shared getRequestForUrl:path
                                    forType:day
                             withCompletion:^(BOOL status, NSData * _Nonnull requestData) {
        NSError* err;
        NSDictionary* weatherDict = [NSJSONSerialization JSONObjectWithData:requestData options:NSJSONReadingAllowFragments error:&err];

        NSDate* weatherDate = [NSDate dateWithTimeIntervalSince1970:[weatherDict[@"dt"] doubleValue]];
        NSDictionary* mainWeather = weatherDict[@"main"];

        [HistoryProvider.shared addHistoryWithDate:weatherDate
                                           forCity:city
                                          withTemp:[mainWeather[@"temp"] stringValue]];

        completion(status, [[DayWeatherInfo alloc] initWithDate:weatherDate
                                           withTemp:mainWeather[@"temp"]
                                        withMinTemp:mainWeather[@"temp_min"]
                                        withMaxTemp:mainWeather[@"temp_max"]
                                       withHudimity:mainWeather[@"humidity"]]);
    }];
}

- (void)getMonthWeatherInfoForCity:(NSString *)city withCompletion:(nonnull monthCompletionBlock)completion {
    NSString* path = [NSString stringWithFormat:@"%@%@%@",
                      self.monthWeatherURL,
                      city,
                      self.appidPath];

    [NetworkManager.shared getRequestForUrl:path
                                    forType:day
                             withCompletion:^(BOOL status, NSData * _Nonnull requestData) {
        // TODO: implement after uploding this opportunity on OpenWeatherAPI
    }];
}

@end
