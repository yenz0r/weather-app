//
//  MonthWeatherPresenter.h
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MonthWeatherModel.h"
#import "MonthWeatherView.h"

@class MonthWeatherView;

NS_ASSUME_NONNULL_BEGIN

@interface MonthWeatherPresenter : NSObject

- (id)initWithModel:(MonthWeatherModel*)model forView:(MonthWeatherView*)view;

@end

NS_ASSUME_NONNULL_END
