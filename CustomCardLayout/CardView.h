//
//  CardView.h
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardViewCell.h"

@class CardView;

@protocol CardViewDelegate <NSObject>

- (nullable CardViewCell *)cardView:(nullable CardView *)cardView cellForIndex:(NSInteger)index;

@end

@protocol CardViewDataSource <NSObject>

- (NSInteger)numberOfRowsInCardView:(nullable CardView *)cardView;

@end

IB_DESIGNABLE
@interface CardView : UIView

@property (nullable, weak, nonatomic) IBOutlet id<CardViewDataSource> dataSource;
@property (nullable, weak, nonatomic) IBOutlet id<CardViewDelegate> delegate;

-(void)reloadData;

@end

