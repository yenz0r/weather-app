//
//  HistoryProvider.h
//  weather-app
//
//  Created by yenz0redd on 27.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DatabaseManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface HistoryProvider : NSObject

+ (instancetype)shared;
- (id)init;

- (void)addHistoryWithDate:(NSDate*)date
             forCity:(NSString*)city
            withTemp:(NSString*)temp;

- (NSMutableArray<DayWeather*>*)getAllNotes;
- (void)deleteAllHistory;

@end

NS_ASSUME_NONNULL_END
