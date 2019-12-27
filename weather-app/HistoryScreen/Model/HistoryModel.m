//
//  HistoryModel.m
//  weather-app
//
//  Created by yenz0redd on 26.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "HistoryModel.h"
#import "HistoryProvider.h"

@implementation HistoryModel

- (id)init {
    self = [super init];
    if (self) {
        self.dayWeatherHistory = [HistoryProvider.shared getAllNotes];
    }
    return self;
}

- (void)clearHistory {
    [HistoryProvider.shared deleteAllHistory];
    self.dayWeatherHistory = [HistoryProvider.shared getAllNotes];
}

@end
