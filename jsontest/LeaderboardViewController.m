//
//  LeaderboardViewController.m
//  jsontest
//
//  Created by James Sreenan on 13/03/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import "LeaderboardViewController.h"
#import "Leaderboard.h"
#import "LeaderboardDetailViewController.h"

#define getDataURL @"http://fantasy.gaeliclife.com/UserLeaderboard.php"
@interface LeaderboardViewController ()

@end

@implementation LeaderboardViewController
@synthesize jsonArray, LeaderboardArray;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Leaderboard";
    
    [self retrieveData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return LeaderboardArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil)
    {
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    
                
    // Configure the cell...
    Leaderboard * LeaderboardObject;
    LeaderboardObject = [LeaderboardArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = LeaderboardObject.teamName;
    cell.detailTextLabel.Text = LeaderboardObject.teamScore;
    //Accessory
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"pushLeaderboardDetailView"])
    {
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        
        //get the object for the selected row
        Leaderboard * object =  [LeaderboardArray objectAtIndex:indexPath.row];
        [[segue destinationViewController] getLeaderboards:object];
    }

}


#pragma mark -
#pragma mark Class Method

-(void) retrieveData

{
    NSURL * url = [NSURL URLWithString:getDataURL];
    NSData * data = [NSData dataWithContentsOfURL:url];
    
    jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    //Leaderboard Array
    LeaderboardArray = [[NSMutableArray alloc] init];
    
    //loop through json array
    for (int i = 0; i < jsonArray.count; i++)
    {
        //create leaderboard object
        NSString * uForename = [[jsonArray objectAtIndex:i]objectForKey:@"UserForename"];
        NSString * uSurname = [[jsonArray objectAtIndex:i]objectForKey:@"UserSurname"];
        NSString * tName = [[jsonArray objectAtIndex:i]objectForKey:@"TeamName"];
        NSString * uCounty = [[jsonArray objectAtIndex:i]objectForKey:@"UserCounty"];
        NSString * tScore = [[jsonArray objectAtIndex:i]objectForKey:@"TeamScore"];
        
        //add leaderboard object to leaderboard array
        
        [LeaderboardArray addObject:[[Leaderboard alloc] initWithUserForename:uForename andUserSurname:uSurname andTeamName:tName andUserCounty:uCounty andTeamScore:tScore]];
    }
    
    //reload table vies
    [self.tableView reloadData];
}

@end
