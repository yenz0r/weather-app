//
//  MonthWeatherModel.h
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MonthWeatherModel : NSObject

@property (strong, nonatomic) NSString* selectedCity;
- (id)initWithCity:(NSString*)selectedCity;

@end

NS_ASSUME_NONNULL_END
