//
//  StartScreenBuilder.h
//  weather-app
//
//  Created by yenz0redd on 22.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StartScreenView.h"

NS_ASSUME_NONNULL_BEGIN

@interface StartScreenBuilder : NSObject

- (StartScreenView*)build;

@end

NS_ASSUME_NONNULL_END
