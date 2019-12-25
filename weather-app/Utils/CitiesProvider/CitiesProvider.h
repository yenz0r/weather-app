//
//  CitiesProvider.h
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CitiesProvider : NSObject

@property (strong, nonatomic) NSArray<NSString*>* allCities;

+ (instancetype)shared;
- (id)init;
- (NSMutableArray<NSString*>*)getCities:(NSInteger)count;

@end

NS_ASSUME_NONNULL_END
