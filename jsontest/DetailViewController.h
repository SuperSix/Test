//
//  DetailViewController.h
//  jsontest
//
//  Created by Daniel Hoy on 24/02/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Players.h"

@interface DetailViewController : UIViewController

@property(nonatomic, strong) IBOutlet UILabel * PlayerNameLabel;
@property(nonatomic, strong) IBOutlet UILabel * PlayerCountyLabel;
@property(nonatomic, strong) IBOutlet UILabel * PositionLabel;
@property(nonatomic, strong) IBOutlet UILabel * PlayerScoreWeek1Label;
@property(nonatomic, strong) IBOutlet UILabel * PlayerOverallScoreLabel;

@property(nonatomic, strong) Players * currentPlayer;

#pragma mark -
#pragma mark Methods

-(void)getPlayers:(id)playersObject;
-(void)setLabels;




@end
