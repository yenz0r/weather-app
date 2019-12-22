//
//  DayWeatherModel.h
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DayWeatherModel : NSObject

- (id)initWithCity:(NSString*)city;
@property (strong, nonatomic) NSString* selectedCity;

@end

NS_ASSUME_NONNULL_END
