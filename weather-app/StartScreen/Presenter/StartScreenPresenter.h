//
//  StartScreenPresenter.h
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StartScreenModel.h"
#import "StartScreenView.h"

NS_ASSUME_NONNULL_BEGIN

@class StartScreenView;

@interface StartScreenPresenter : NSObject

@property (strong, nonatomic) NSMutableArray<NSString*>* citiesNames;
@property (strong, nonatomic) NSString* selectedCity;

@property (strong, nonatomic) StartScreenModel *model;
@property (weak, nonatomic) StartScreenView* view;

- (id)initWithModel:(StartScreenModel*)model forView:(StartScreenView*)view;

- (void)handleStartButtonTap;
- (void)viewDidLoad;
- (void)handlePickerSelect:(NSInteger)atRow;
- (void)handleTextFieldInput:(NSString*)withText;
- (void)handleHistoryItemTap;

@end

NS_ASSUME_NONNULL_END
