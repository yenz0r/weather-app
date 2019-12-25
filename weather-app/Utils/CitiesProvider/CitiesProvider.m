//
//  CitiesProvider.m
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "CitiesProvider.h"

@implementation CitiesProvider

+ (CitiesProvider *)shared
{
    static CitiesProvider *provider = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        provider = [[CitiesProvider alloc] init];
    });
    return provider;
}

- (id)init {
    self.allCities = [NSArray arrayWithObjects:
                      @"Moscow",
                      @"Paris",
                      @"Minsk",
                      @"Homel",
                      @"Milan",
                      @"Tokyo",
                      @"Rome",
                      nil
                    ];
    return self;
}

- (NSMutableArray<NSString*>*)getCities:(NSInteger)count {
    NSMutableArray<NSString*>* result = [[NSMutableArray alloc] init];
    for ( int i = 0; i < count; i++ ) {
        if (i < [self.allCities count]) {
            [result addObject:self.allCities[i]];
        } else {
            break;
        }
    }
    return result;
}

@end
