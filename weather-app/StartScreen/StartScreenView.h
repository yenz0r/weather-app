//
//  StartScreenView.h
//  weather-app
//
//  Created by yenz0redd on 19.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartScreenPresenterImpl.h"

NS_ASSUME_NONNULL_BEGIN

@class StartScreenPresenterImpl;

@interface StartScreenView : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) StartScreenPresenterImpl *presenter;
@property (weak, nonatomic) IBOutlet UITextField *cityNameTextFiled;
@property (weak, nonatomic) IBOutlet UIPickerView *cityNamePickerView;
@property (weak, nonatomic) IBOutlet UILabel *yourCityLabel;
- (IBAction)startButtonTapped:(id)sender;
- (void)updateResultLabel: (NSString*)text;
- (void)showErrorAlert;
@end

NS_ASSUME_NONNULL_END
