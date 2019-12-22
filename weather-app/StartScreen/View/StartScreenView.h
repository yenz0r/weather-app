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

@property (weak, nonatomic) IBOutlet UITextField *cityNameTextField;
@property (weak, nonatomic) IBOutlet UIPickerView *cityNamePickerView;
@property (weak, nonatomic) IBOutlet UILabel *yourCityLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButtonTapped;
- (IBAction)startButtonTapped:(id)sender;


@property (strong, nonatomic) StartScreenPresenterImpl *presenter;
- (void)updateResultLabel: (NSString*)text;
- (void)showErrorAlert;
@end

NS_ASSUME_NONNULL_END
