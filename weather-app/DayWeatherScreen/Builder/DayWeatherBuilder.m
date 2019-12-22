//
//  DayWeatherBuilder.m
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherBuilder.h"
#import "DayWeatherModel.h"
#import "DayWeatherPresenter.h"

@implementation DayWeatherBuilder

- (DayWeatherView*)build:(NSString*)city {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DayWeatherView *view = [storyboard instantiateViewControllerWithIdentifier:@"DayWeatherView"];

    DayWeatherModel* model = [[DayWeatherModel alloc] initWithCity:city];
    DayWeatherPresenter* presenter = [[DayWeatherPresenter alloc] initWithModel:model forView:view];

    view.presenter = presenter;

    return view;
}

@end
