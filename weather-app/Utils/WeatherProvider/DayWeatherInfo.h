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
@property (strong, nonatomic) NSNumber* temp;
@property (strong, nonatomic) NSNumber* minTemp;
@property (strong, nonatomic) NSNumber* maxTemp;
@property (strong, nonatomic) NSNumber* hudimity;

- (id)initWithDate:(NSDate*)date
          withTemp:(NSNumber*) temp
       withMinTemp:(NSNumber*) minTemp
       withMaxTemp:(NSNumber*) maxTemp
      withHudimity:(NSNumber*) hudiminty;

@end

NS_ASSUME_NONNULL_END
