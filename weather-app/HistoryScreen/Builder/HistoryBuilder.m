//
//  HistoryBuilder.m
//  weather-app
//
//  Created by yenz0redd on 26.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "HistoryBuilder.h"
#import "HistoryModel.h"
#import "HistoryPresenter.h"

@implementation HistoryBuilder

- (HistoryView *)build {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HistoryView *view = [storyboard instantiateViewControllerWithIdentifier:@"HistoryView"];

    HistoryModel* model = [[HistoryModel alloc] init];
    HistoryPresenter* presenter = [[HistoryPresenter alloc] initWithModel:model forView:view];

    view.presenter = presenter;

    return view;
}

@end
