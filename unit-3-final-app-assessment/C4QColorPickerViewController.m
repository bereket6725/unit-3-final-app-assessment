//
//  C4QColorPickerViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "C4QColorPickerViewController.h"
#import "C4QViewController.h"

@interface C4QColorPickerViewController ()

@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;

@end

@implementation C4QColorPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.blueButton.backgroundColor = [UIColor blueColor];
    self.greenButton.backgroundColor = [UIColor greenColor];
    self.redButton.backgroundColor = [UIColor redColor];
    
    
    
    [self.blueButton addTarget:self action:@selector(transferColor:) forControlEvents:UIControlEventTouchUpInside];
    
   
        
    [self.greenButton addTarget:self action:@selector(transferColor:) forControlEvents:UIControlEventTouchUpInside];
        
    
    
        
    [self.redButton addTarget:self action:@selector(transferColor:) forControlEvents:UIControlEventTouchUpInside];
        
    

    
    
}



-(void)transferColor:(UIButton*)button {
    
    UIColor* color = button.backgroundColor;
    
    [self.delegate colorThatYouPicked:color];
    
}







@end
