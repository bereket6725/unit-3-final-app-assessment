//
//  CatStuffTableViewCell.m
//  unit-3-final-app-assessment
//
//  Created by Bereket  on 12/19/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "CatStuffTableViewCell.h"
#import "C4QCatFactsTableViewController.h"

@implementation CatStuffTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (IBAction)savedFactButton:(id)sender {
    
    NSMutableArray* savedArray = [[NSMutableArray alloc] init];
    NSUserDefaults* defaults =   [NSUserDefaults standardUserDefaults];
    
    
    if ([defaults objectForKey:@"factsArray"] == nil) {
        
     [savedArray addObject:self.catFactsLabel.text];
    
     [defaults setObject:savedArray forKey:@"factsArray"];
     [defaults synchronize];
        
    }
    
    else
    {
        
     savedArray = [[defaults objectForKey:@"factsArray"] mutableCopy];
    [savedArray addObject:self.catFactsLabel.text];
    
    [defaults setObject:savedArray forKey:@"factsArray"];
    [defaults synchronize];
    }
    
}
@end
