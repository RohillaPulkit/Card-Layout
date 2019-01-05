//
//  CardView.m
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import "CardView.h"

@implementation CardView{

    UIStackView *mainStackView;

    NSInteger numberOfRows;
}

-(void)prepareForInterfaceBuilder{
    
    self.backgroundColor = [[UIColor alloc]initWithWhite:0.8 alpha:0.6];
    
    CGFloat height = self.superview.bounds.size.height/3;
    
    [[self.heightAnchor constraintEqualToConstant:height] setActive:YES];
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:self.bounds];
    lbl.text = @"CardView";
    lbl.textColor = [UIColor whiteColor];
    lbl.textAlignment = NSTextAlignmentCenter;
    
    
    [self addSubview:lbl];
}

-(void)awakeFromNib{
    
    [self initMainStackView];
    [self reloadData];

//    [self setClipsToBounds:YES];
    
//    [self.layer setBorderWidth:1];
//    [self.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    
    [self.layer setCornerRadius:5];
    
    [super awakeFromNib];
}

-(void)initMainStackView{
    
    if (!mainStackView) {
     
        mainStackView = [[UIStackView alloc] init];
        
        [mainStackView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [mainStackView setAxis:UILayoutConstraintAxisVertical];
        [mainStackView setDistribution:UIStackViewDistributionFill];
        [mainStackView setSpacing:8.0];
    }
}

-(void)reloadData{
    
    numberOfRows = [self.dataSource numberOfRowsInCardView:self];
    
    [self createCardLayout];
}

-(void)updateConstraints{

    [super updateConstraints];
    
    NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[mainStackView]-|"
                                                                             options:0
                                                                             metrics:nil
                                                                               views:NSDictionaryOfVariableBindings(mainStackView)];
    
    NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[mainStackView]-|"
                                                                           options:0
                                                                           metrics:nil
                                                                             views:NSDictionaryOfVariableBindings(mainStackView)];
    
    
    [self addConstraints:horizontalConstraints];
    [self addConstraints:verticalConstraints];
}

-(void)createCardLayout{
 
    for (int index = 0; index < numberOfRows; index++) {
    
        CardViewCell *titleValueStackView = [self.delegate cardView:self cellForIndex:index];
        
        [mainStackView addArrangedSubview:titleValueStackView];
    }
    
    [self addSubview:mainStackView];

    [self updateConstraints];
}

@end
