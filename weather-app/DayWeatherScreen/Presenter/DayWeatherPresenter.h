//
//  DayWeatherPresenter.h
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DayWeatherModel.h"
#import "DayWeatherView.h"

NS_ASSUME_NONNULL_BEGIN

@class DayWeatherView;

@interface DayWeatherPresenter : NSObject

- (id)initWithModel:(DayWeatherModel*)model forView:(DayWeatherView*)view;
- (void)viewDidAppear;

@end

NS_ASSUME_NONNULL_END
