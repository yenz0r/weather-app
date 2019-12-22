//
//  StartScreenModel.h
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CitiesProvider.h"

NS_ASSUME_NONNULL_BEGIN

@interface StartScreenModel : NSObject

@property (strong, nonatomic) NSMutableArray<NSString*>* citiesNames;
@property (strong, nonatomic) CitiesProvider* citiesProvider;

- (id)initWithCitiesCount:(NSInteger)citiesCount;

@end

NS_ASSUME_NONNULL_END
