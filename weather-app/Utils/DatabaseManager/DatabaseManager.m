//
//  DatabaseManager.m
//  weather-app
//
//  Created by yenz0redd on 27.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DatabaseManager.h"
#import <Realm/Realm.h>

@interface DatabaseManager ()

@end

@implementation DatabaseManager

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

+ (instancetype)shared {
    static DatabaseManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[DatabaseManager alloc] init];
    });
    return manager;
}

- (NSMutableArray<DayWeather *> *)getDayWeatherHistory {
    RLMRealm* realm = [RLMRealm defaultRealm];
    NSMutableArray<DayWeather*>* dayWeatherResults = [[NSMutableArray alloc] init];
    RLMResults* results = [DayWeather allObjectsInRealm:realm];
    for (DayWeather* result in results) {
        [dayWeatherResults addObject:result];
    }
    return dayWeatherResults;
}

- (void)saveDayWeather:(DayWeather *)dayWeather {
    RLMRealm* realm = [RLMRealm defaultRealm];
    [realm transactionWithBlock:^{
        [realm addObject:dayWeather];
    }];
}

- (void)deleteAllObjects {
    RLMRealm* realm = [RLMRealm defaultRealm];
    [realm transactionWithBlock:^{
        [realm deleteAllObjects];
    }];
}

@end
