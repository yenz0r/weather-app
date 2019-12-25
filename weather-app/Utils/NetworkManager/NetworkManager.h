//
//  NetworkManager.h
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    day, month
} DownloadType;

@interface NetworkManager : NSObject

typedef void(^getCompletionBlock)(BOOL status, NSData* requestData);

+ (instancetype)shared;
- (id)init;

- (void)getRequestForUrl:(NSString*)urlString forType:(DownloadType)type withCompletion:(getCompletionBlock)completion;

@end

NS_ASSUME_NONNULL_END
