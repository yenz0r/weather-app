//
//  MonthWeatherBuilder.h
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MonthWeatherView.h"

NS_ASSUME_NONNULL_BEGIN

@interface MonthWeatherBuilder : NSObject

- (MonthWeatherView*)buildWithCity:(NSString*)city;

@end

NS_ASSUME_NONNULL_END
