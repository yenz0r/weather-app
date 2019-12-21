//
//  StartScreenPresenter.m
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "StartScreenPresenterImpl.h"
#import "StartScreenModel.h"

@interface StartScreenPresenterImpl ()

- (BOOL)isCorrectCity;

@end

@implementation StartScreenPresenterImpl

- (id)initWithModel:(StartScreenModel*) model forView:(nonnull StartScreenView *)view {
    self.model = model;
    self.view = view;
    self.selectedCity = @"underfined";
    return self;
}

- (void)handleStartButtonTap {
    if (self.isCorrectCity) {
        printf("start");
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
