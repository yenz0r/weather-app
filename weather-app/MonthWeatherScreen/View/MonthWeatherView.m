//
//  MonthWeatherView.m
//  weather-app
//
//  Created by yenz0redd on 23.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "MonthWeatherView.h"

@interface MonthWeatherView ()

@property (weak, nonatomic) IBOutlet UITableView *infoTableView;

@end

@implementation MonthWeatherView

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)showLoadingAlert {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Loading"
                                                                   message:@"Wait a bit please.."
                                                            preferredStyle:UIAlertControllerStyleAlert];

    [self presentViewController:alert animated:YES completion:nil];
}

- (void)hideLoadingAlert {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
