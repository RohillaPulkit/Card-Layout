//
//  CardViewTableCell.m
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import "CardViewTableCell.h"
#import "CardViewCell.h"

@implementation CardViewTableCell

- (void)awakeFromNib {
    
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - CardViewDataSource

-(NSInteger)numberOfRowsInCardView:(CardView *)cardView{
    
    return 4;
}

#pragma mark - CardViewDelegate

-(CardViewCell *)cardView:(CardView *)cardView cellForIndex:(NSInteger)index{

    NSString *title = [NSString stringWithFormat:@"Title %li", (long)index+1];
    NSString *value = [NSString stringWithFormat:@"Value %li", (long)index+1];
    
    CardViewCell *cell = [[CardViewCell alloc] initCellWithTitle:title Value:value];
    
    return cell;
}


@end
