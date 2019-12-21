//
//  StartScreenModel.m
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "StartScreenModel.h"

@implementation StartScreenModel

- (id)initWithCitiesCount:(NSInteger)citiesCount {
    self.citiesProvider = CitiesProvider.shared;
    self.citiesNames = [self.citiesProvider getCities:citiesCount];
    return self;
}

@end
