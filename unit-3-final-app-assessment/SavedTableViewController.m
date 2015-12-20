//
//  SavedTableViewController.m
//  unit-3-final-app-assessment
//
//  Created by Bereket  on 12/20/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "SavedTableViewController.h"

@implementation SavedTableViewController




-(void)viewDidLoad {
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cachedArray count];
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    UITableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"CachedFactsIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text  = self.cachedArray[indexPath.row];
    
    
    
    
    return cell;
    
}







@end
