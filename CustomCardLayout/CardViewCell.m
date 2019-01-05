//
//  CardViewCell.m
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import "CardViewCell.h"

@implementation CardViewCell

@synthesize lblTitle, lblValue;

-(instancetype)initCellWithTitle:(NSString *)title Value:(NSString *)value{
    
    self = [super init];
    
    if (self) {
        
        [self setAxis:UILayoutConstraintAxisHorizontal];
        [self setDistribution:UIStackViewDistributionFillEqually];
        [self setSpacing:8.0];
        [self setAlignment:UIStackViewAlignmentTop];
        
        lblTitle = [[UILabel alloc] init];
        lblTitle.text = title ? title : @"Title";
        lblTitle.textColor = [UIColor blackColor];
        lblTitle.numberOfLines = 0;
        
        lblValue = [[UILabel alloc] init];
        lblValue.text = value ? value : @"Value";
        lblValue.textColor = [UIColor darkGrayColor];
        lblValue.numberOfLines = 0;
        
        [self addArrangedSubview:lblTitle];
        [self addArrangedSubview:lblValue];
    }
    
    return self;
}

@end
