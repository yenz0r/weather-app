//
//  DayWeatherInfo.h
//  weather-app
//
//  Created by yenz0redd on 25.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DayWeatherInfo : NSObject

@property (strong, nonatomic) NSDate* date;
@property double temp;
@property double minTemp;
@property double maxTemp;
@property double hudimity;

- (id)initWithDate:(NSDate*)date
    withTemp:(double) temp
    withMinTemp:(double) minTemp
    withMaxTemp:(double) maxTemp
    withHudimity:(double) hudiminty;

@end

NS_ASSUME_NONNULL_END
