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

    StartScreenModel *model = [[StartScreenModel alloc] initWithCitiesCount:7];
    StartScreenPresenterImpl *presenter = [[StartScreenPresenterImpl alloc] initWithModel:model forView:self];

    self.presenter = presenter;

    [self.cityNamePickerView setDelegate:self];

    [self.cityNameTextFiled addTarget:self action:@selector(handleTextUpdating:) forControlEvents:UIControlEventEditingChanged];

    [self.presenter viewDidLoad];
    [self.cityNamePickerView reloadAllComponents];
}

- (void)handleTextUpdating:(UITextField*)sender {
    [self.presenter handleTextFieldInput:sender.text];
}

- (void)updateResultLabel:(NSString *)text {
    NSString* resultText = [NSString stringWithFormat:@"%@%@", @"Your city: ", text];
    [self.yourCityLabel setText:resultText];
}

- (IBAction)startButtonTapped:(id)sender {
    [self.presenter handleStartButtonTap];
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

@end
