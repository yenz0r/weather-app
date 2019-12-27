//
//  HistoryView.m
//  weather-app
//
//  Created by yenz0redd on 27.12.2019.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

#import "HistoryView.h"
#import "HistoryTableViewCell.h"

@interface HistoryView ()

@end

@implementation HistoryView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setDataSource:self];
    [self.tableView registerNib:[UINib nibWithNibName:@"HistoryTableViewCell" bundle:nil] forCellReuseIdentifier:@"historyCell"];

    self.navigationItem.title = @"History";

    UIBarButtonItem *clearAllItem = [[UIBarButtonItem alloc] initWithTitle:@"Clear"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(clearAllItemTapped:)];
    self.navigationItem.rightBarButtonItem = clearAllItem;
}

- (void)clearAllItemTapped:(id)sender {
    [self.presenter handleClearAllObjectTapped];
}

- (void)reloadData {
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.presenter.numberOfNotes;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HistoryTableViewCell* cell = (HistoryTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"historyCell" forIndexPath:indexPath];
    [cell setupDateWithText:[self.presenter dateForCellAtIndex:indexPath.row]];
    [cell setupTempWithText:[self.presenter tempForCellAtIndex:indexPath.row]];
    [cell setupCityNameWithText:[self.presenter cityForCellAtIndex:indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0;
}

@end
