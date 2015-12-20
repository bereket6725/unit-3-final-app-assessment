//
//  C4QCatsTableViewController.m
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import "CatStuffTableViewCell.h"
#import "C4QCatFactsTableViewController.h"
#import  <AFNetworking/AFNetworking.h>
#import "C4QCatFactsDetailViewController.h"
#import "SavedTableViewController.h"



#define CAT_API_URL @"http://catfacts-api.appspot.com/api/facts?number=100"

@interface C4QCatFactsTableViewController ()

@end

@implementation C4QCatFactsTableViewController

- (void)viewDidLoad
{
    
   
    
    [super viewDidLoad];
    
    
    
    self.savedArray = [[NSMutableArray alloc] init];
    self.catFactsArray = [[NSMutableArray alloc] init];

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];


    [manager GET:CAT_API_URL
      parameters:nil
        progress:nil
     
     
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             
            // NSArray *posts = [responseObject objectForKey:@"facts"];
             
             
             NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
             
             self.catFactsArray = [[json objectForKey:@"facts"] mutableCopy];
             
             [self.tableView reloadData];
             
              NSLog(@"%@",json);
             
         }
         failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             
             NSLog(@"%@", error.userInfo);
             
         }];

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.catFactsArray count];
    
    
}


- (CatStuffTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    CatStuffTableViewCell  *cell = [tableView dequeueReusableCellWithIdentifier:@"CatStuffCellIdentifier" forIndexPath:indexPath];
    
    cell.catFactsLabel.text  = self.catFactsArray[indexPath.row];
    

    
    
    return cell;
    
}




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    
    if([segue.identifier isEqualToString:@"SavedFactsIdentifier"]){
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
    SavedTableViewController* viewController = segue.destinationViewController;
        
    viewController.cachedArray = [[defaults objectForKey:@"factsArray"] mutableCopy];
        
    }
    
    else{
        
    NSIndexPath* indexPath = [self.tableView indexPathForSelectedRow];
    C4QCatFactsDetailViewController* viewController = segue.destinationViewController;
    viewController.factText = self.catFactsArray[indexPath.row];
        
    }
    
    
    
}






@end
