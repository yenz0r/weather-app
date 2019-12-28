//
//  DayWeatherView.m
//  weather-app
//
//  Created by yenz0redd on 21.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "DayWeatherView.h"

@interface DayWeatherView ()

@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;
@property (weak, nonatomic) IBOutlet UILabel *minTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxTempLabel;
@property (weak, nonatomic) IBOutlet UILabel *hudimityLabel;

@end

@implementation DayWeatherView

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.presenter viewDidAppear];
}

- (void)showCityName:(NSString *)name {
    self.cityLabel.text = name;
}

- (void)showTempValue:(NSString *)text {
    self.tempLabel.text = text;
}

- (void)showMaxTempValue:(NSString *)text {
    self.maxTempLabel.text = text;
}

- (void)showMinTempValue:(NSString *)text {
    self.minTempLabel.text = text;
}

- (void)showHudimityValue:(NSString *)text {
    self.hudimityLabel.text = text;
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

- (void)showErrorAlert {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Error"
                                                                   message:@"Server err"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"Close" style:UIAlertActionStyleDestructive
                                                     handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:true completion:nil];
        [self.presenter handleCloseAlertAction];
    }];

    [alert addAction:okAction];

    [self presentViewController:alert animated:YES completion:nil];
}

@end
