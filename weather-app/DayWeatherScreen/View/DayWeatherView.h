//
//  DayWeatherView.h
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DayWeatherPresenter.h"

NS_ASSUME_NONNULL_BEGIN

@class DayWeatherPresenter;

@interface DayWeatherView : UIViewController

@property (strong, nonatomic) DayWeatherPresenter* presenter;

- (void)showCityName:(NSString*)name;
- (void)showTempValue:(NSString*)text;
- (void)showMaxTempValue:(NSString*)text;
- (void)showMinTempValue:(NSString*)text;
- (void)showHudimityValue:(NSString*)text;

- (void)showLoadingAlert;
- (void)hideLoadingAlert;

- (void)showErrorAlert;

@end

NS_ASSUME_NONNULL_END
