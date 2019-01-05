//
//  ViewController.m
//  CustomCardLayout
//
//  Created by Pulkit Rohilla on 12/07/17.
//  Copyright © 2017 PulkitRohilla. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loadi the view.
}

- (void)didReceiveMemoryWarni {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - CardViewDataSource

-(NSInteger)numberOfRowsInCardView:(CardView *)cardView{

    return 4;
}

#pragma mark - CardViewDelegate

-(NSDictionary *)cardView:(CardView *)cardView dictionaryForIndex:(NSInteger)index{
    
    return @{@"Title" : @"One",
        @"Value" : @"ValueOne"};
}

@end
