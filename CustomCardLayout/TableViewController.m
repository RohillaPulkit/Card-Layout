//
//  TableViewController.m
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import "TableViewController.h"
#import "CardViewTableCell.h"

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the followi line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the followi line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
   
}

- (void)didReceiveMemoryWarni {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    CardViewTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CardViewTableCell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor colorWithWhite:0.2 alpha:0.5];
    
    return cell;
}

@end
