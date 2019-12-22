//
//  DayWeatherBuilder.h
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DayWeatherView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DayWeatherBuilder : NSObject

- (DayWeatherView*)build:(NSString*)city;

@end

NS_ASSUME_NONNULL_END
