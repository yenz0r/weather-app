//
//  HistoryView.h
//  weather-app
//
//  Created by yenz0redd on 27.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryPresenter.h"

NS_ASSUME_NONNULL_BEGIN

@class HistoryPresenter;

@interface HistoryView : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) HistoryPresenter* presenter;

- (void)reloadData;

@end

NS_ASSUME_NONNULL_END
