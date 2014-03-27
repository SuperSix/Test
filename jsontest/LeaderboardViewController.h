//
//  LeaderboardViewController.h
//  jsontest
//
//  Created by James Sreenan on 13/03/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeaderboardViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * jsonArray;
@property (nonatomic, strong) NSMutableArray * LeaderboardArray;

#pragma mark -
#pragma mark Class Method

-(void) retrieveData;
@end
