//
//  HistoryTableViewCell.h
//  weather-app
//
//  Created by yenz0redd on 26.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HistoryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempLabel;

- (void)setupDateWithText:(NSString*)text;
- (void)setupCityNameWithText:(NSString*)text;
- (void)setupTempWithText:(NSString*)text;

@end

NS_ASSUME_NONNULL_END
