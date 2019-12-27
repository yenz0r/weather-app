//
//  HistoryModel.h
//  weather-app
//
//  Created by yenz0redd on 26.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DayWeather.h"

NS_ASSUME_NONNULL_BEGIN

@interface HistoryModel : NSObject

@property (strong, nonatomic) NSMutableArray<DayWeather*>* dayWeatherHistory;

- (id)init;
- (void)clearHistory;

@end

NS_ASSUME_NONNULL_END
