//
//  PlayersViewController.h
//  jsontest
//
//  Created by Daniel Hoy on 20/02/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayersViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * jsonArray;
@property (nonatomic, strong) NSMutableArray * playersArray;

#pragma mark -
#pragma mark Class Method

-(void) retrieveData;
@end
