//
//  StartScreenPresenter.m
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "StartScreenPresenter.h"
#import "StartScreenModel.h"
#import "DayWeatherView.h"
#import "DayWeatherBuilder.h"
#import "MonthWeatherView.h"
#import "MonthWeatherBuilder.h"

@interface StartScreenPresenter ()

- (BOOL)isCorrectCity;

@end

@implementation StartScreenPresenter

- (id)initWithModel:(StartScreenModel*) model forView:(nonnull StartScreenView *)view {
    self.model = model;
    self.view = view;
    self.selectedCity = @"underfined";
    return self;
}

- (void)handleStartButtonTap {
    if (self.isCorrectCity) {
        UITabBarController* tabController = [[UITabBarController alloc] init];

        NSMutableArray<UIViewController*> *viewControllers = [[NSMutableArray alloc] init];

        DayWeatherView* dayWeatherView = [[[DayWeatherBuilder alloc] init] build:self.selectedCity];
        MonthWeatherView* monthWeatherView = [[[MonthWeatherBuilder alloc] init] buildWithCity:self.selectedCity];

        [viewControllers addObject:dayWeatherView];
        [viewControllers addObject:monthWeatherView];
        
        [tabController setViewControllers:viewControllers];

        dayWeatherView.tabBarItem.title = @"Day";
        monthWeatherView.tabBarItem.title = @"Month";

        [self.view.navigationController pushViewController:tabController animated:true];

        tabController.navigationItem.title = @"Weather info";

    } else {
        [self.view showErrorAlert];
    }
}

- (void)viewDidLoad {
    self.citiesNames = self.model.citiesNames;
    [self.view updateResultLabel:self.selectedCity];
}

- (void)handlePickerSelect:(NSInteger)atRow {
    self.selectedCity = self.citiesNames[atRow];
    [self.view updateResultLabel:self.selectedCity];
}

- (void)handleTextFieldInput:(NSString*)withText{
    self.selectedCity = withText;
    [self.view updateResultLabel:self.selectedCity];
}

- (BOOL)isCorrectCity {
    return ![self.selectedCity isEqual: @"underfined"];
}

@end
