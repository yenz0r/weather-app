//
//  NetworkManager.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "NetworkManager.h"

@interface NetworkManager ()

@property (strong, nonatomic) NSString* baseUrl;

@end

@implementation NetworkManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.baseUrl = @"";
    }
    return self;
}

+ (instancetype)shared {
    static NetworkManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[NetworkManager alloc] init];
    });
    return manager;
}

- (void)getRequestForUrl:(NSString*)urlString
                 forType:(DownloadType)type
          withCompletion:(getCompletionBlock)completion {
    NSURL* url = [NSURL URLWithString:urlString];

    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSData* emptyData = [[NSData alloc] init];

        if (error != nil) {
            completion(false, emptyData);
            return;
        }

        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *) response;
        if (httpResponse.statusCode >= 300) {
            completion(false, emptyData);
            return;
        }

        completion(true, data);

//        NSError *err;
//        NSDictionary *resultDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
//
//        if (err != nil) {
//            completion(false, [[NSDictionary alloc] init]);
//            return;
//        }
//
//        completion(true, resultDict);
    }] resume];
}

@end
