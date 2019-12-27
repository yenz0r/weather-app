//
//  HistoryPresenter.m
//  weather-app
//
//  Created by yenz0redd on 26.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "HistoryPresenter.h"

@interface HistoryPresenter ()

@property (strong, nonatomic) HistoryModel* model;
@property (strong, nonatomic) HistoryView* view;

@end

@implementation HistoryPresenter

- (id)initWithModel:(HistoryModel*)model forView:(HistoryView*)view{
    self = [super init];
    if (self) {
        self.model = model;
        self.view = view;
    }
    return self;
}

- (void)viewWillApper {
    [self.view reloadData];
}

- (NSString *)cityForCellAtIndex:(NSInteger)index {
    return self.model.dayWeatherHistory[index].city;
}

- (NSString *)dateForCellAtIndex:(NSInteger)index {
    NSDate* date = self.model.dayWeatherHistory[index].requestDate;
    return [NSDateFormatter localizedStringFromDate:date
                                          dateStyle:NSDateFormatterShortStyle
                                          timeStyle:NSDateFormatterNoStyle];
}

- (NSString *)tempForCellAtIndex:(NSInteger)index {
    return self.model.dayWeatherHistory[index].temp;
}

- (NSInteger)numberOfNotes {
    return [self.model.dayWeatherHistory count];
}

- (void)handleClearAllObjectTapped {
    [self.model clearHistory];
    [self.view reloadData];
}

@end
