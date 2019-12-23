//
//  MonthWeatherView.h
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MonthWeatherPresenter.h"

NS_ASSUME_NONNULL_BEGIN

@class MonthWeatherPresenter;

@interface MonthWeatherView : UIViewController

@property (strong, nonatomic) MonthWeatherPresenter* presenter;

@end

NS_ASSUME_NONNULL_END
