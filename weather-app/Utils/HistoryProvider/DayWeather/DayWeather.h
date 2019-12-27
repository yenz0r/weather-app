//
//  DayWeather.h
//  weather-app
//
//  Created by yenz0redd on 27.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

NS_ASSUME_NONNULL_BEGIN

@interface DayWeather : RLMObject

@property NSDate* requestDate;
@property NSString* temp;
@property NSString* city;

@end

NS_ASSUME_NONNULL_END
