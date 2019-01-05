//
//  CardViewCell.h
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardViewCell : UIStackView

@property (strong, nonatomic) UILabel *lblTitle;
@property (strong, nonatomic) UILabel *lblValue;

-(instancetype)initCellWithTitle:(NSString *)title Value:(NSString *)value;

@end
