//
//  HistoryPresenter.h
//  weather-app
//
//  Created by yenz0redd on 26.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HistoryModel.h"
#import "HistoryView.h"

NS_ASSUME_NONNULL_BEGIN

@class HistoryView;

@interface HistoryPresenter : NSObject

- (NSInteger)numberOfNotes;
- (NSString*)cityForCellAtIndex:(NSInteger)index;
- (NSString*)dateForCellAtIndex:(NSInteger)index;
- (NSString*)tempForCellAtIndex:(NSInteger)index;

- (id)initWithModel:(HistoryModel*)model forView:(HistoryView*)view;

- (void)viewWillApper;
- (void)handleClearAllObjectTapped;

@end

NS_ASSUME_NONNULL_END
