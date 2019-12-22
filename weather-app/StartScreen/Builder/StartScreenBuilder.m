//
//  StartScreenBuilder.m
//  weather-app
//
//  Created by yenz0redd on 22.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "StartScreenBuilder.h"

@implementation StartScreenBuilder

- (StartScreenView *)build {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    StartScreenView *view = [storyboard instantiateViewControllerWithIdentifier:@"StartScreenView"];

    StartScreenModel* model = [[StartScreenModel alloc] initWithCitiesCount:7];

    StartScreenPresenter* presenter = [[StartScreenPresenter alloc] initWithModel:model forView:view];

    view.presenter = presenter;

    return view;
}

@end
