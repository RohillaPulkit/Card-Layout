//
//  CardViewTableCell.h
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardView.h"

@interface CardViewTableCell : UITableViewCell  <CardViewDelegate, CardViewDataSource>

@property (weak, nonatomic) IBOutlet CardView *cardView;

@end
