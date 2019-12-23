//
//  MonthWeatherBuilder.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "MonthWeatherBuilder.h"

@implementation MonthWeatherBuilder

- (MonthWeatherView *)buildWithCity:(NSString *)city {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MonthWeatherView *view = [storyboard instantiateViewControllerWithIdentifier:@"MonthWeatherView"];

    MonthWeatherModel* model = [[MonthWeatherModel alloc] initWithCity:city];
    MonthWeatherPresenter* presenter = [[MonthWeatherPresenter alloc] initWithModel:model forView:view];

    view.presenter = presenter;

    return view;
}

@end
