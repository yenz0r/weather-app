//
//  StartScreenView.m
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "StartScreenView.h"

@interface StartScreenView ()

@end

@implementation StartScreenView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.cityNamePickerView setDelegate:self];

    [self.cityNameTextField addTarget:self action:@selector(handleTextUpdating:) forControlEvents:UIControlEventEditingChanged];

    [self.presenter viewDidLoad];
    [self.cityNamePickerView reloadAllComponents];
    self.navigationItem.title = @"Choose city";

    UIBarButtonItem *historyItem = [[UIBarButtonItem alloc] initWithTitle:@"History"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(historyItemTapped:)];
    self.navigationItem.rightBarButtonItem = historyItem;
}

- (void)historyItemTapped:(id)sender {
    [self.presenter handleHistoryItemTap];
}

- (void)handleTextUpdating:(UITextField*)sender {
    [self.presenter handleTextFieldInput:sender.text];
}

- (void)updateResultLabel:(NSString *)text {
    [self.yourCityLabel setText:text];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.presenter.citiesNames count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.presenter.citiesNames[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    [self.presenter handlePickerSelect:row];
}

- (void)showErrorAlert {
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Error"
                                message:@"Incorrect city.."
                                preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) { [self dismissViewControllerAnimated:TRUE completion:nil]; }];

    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)startButtonTapped:(id)sender {
    [self.presenter handleStartButtonTap];
}

@end
