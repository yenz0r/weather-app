//
//  DayWeatherPresenter.m
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherPresenter.h"
#import "DayWeatherModel.h"
#import "DayWeatherView.h"

@interface DayWeatherPresenter ()

@property (strong, nonatomic) DayWeatherModel* model;
@property (weak, nonatomic) DayWeatherView* view;

@end

@implementation DayWeatherPresenter

- (id)initWithModel:(DayWeatherModel *)model forView:(DayWeatherView *)view{
    self = [super init];
    if (self) {
        self.view = view;
        self.model = model;
    }
    return self;
}

- (void)viewDidAppear {
    [self.view showCityName:self.model.selectedCity];
    [self.view showLoadingAlert];
    [self.model getWeatherWithCompletion:^(BOOL status, DayWeatherInfo * _Nonnull info) {
        dispatch_async(dispatch_get_main_queue(), ^{
            sleep(1); // for testing
            [self.view hideLoadingAlert];
            if (!status) {
                return;
            }

            [self.view showTempValue:[info.temp stringValue]];
            [self.view showMaxTempValue:[info.maxTemp stringValue]];
            [self.view showMinTempValue:[info.minTemp stringValue]];
            [self.view showHudimityValue:[info.hudimity stringValue]];
        });
    }];
}

@end
