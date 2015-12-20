//
//  CatStuffTableViewCell.h
//  unit-3-final-app-assessment
//
//  Created by Bereket  on 12/19/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CatStuffTableViewCell.h"


@interface CatStuffTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *catFactsLabel;

- (IBAction)savedFactButton:(id)sender;


@end
