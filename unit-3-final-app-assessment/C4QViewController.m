//
//  ViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 11/30/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QViewController.h"
#import "C4QCatFactsTableViewController.h"

@interface C4QViewController ()

@end

@implementation C4QViewController


-(void)viewDidLoad{
    
    
    
}

-(void)colorThatYouPicked:(UIColor *)buttonColor  {
    
    self.view.backgroundColor = buttonColor; 
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"CatFactsIdentifier"]) {
        
        
        C4QCatFactsTableViewController* viewcontroller = segue.destinationViewController;
    }
    else{
    C4QColorPickerViewController* viewController = segue.destinationViewController;
    
    [viewController setDelegate:self];
    }
}




@end
