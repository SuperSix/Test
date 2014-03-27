//
//  DetailViewController.m
//  jsontest
//
//  Created by Daniel Hoy on 24/02/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize PlayerNameLabel, PlayerCountyLabel, PositionLabel, PlayerScoreWeek1Label, PlayerOverallScoreLabel, currentPlayer;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //Load up the UI
    [self setLabels];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Methods

-(void)getPlayers:(id)playersObject;
{
    currentPlayer = playersObject;
}

-(void)setLabels;
{
    PlayerNameLabel.text = currentPlayer.PlayerName;
    PlayerCountyLabel.text = currentPlayer.PlayerCounty;
    PositionLabel.text = currentPlayer.Position;
    PlayerScoreWeek1Label.text = currentPlayer.PlayerScoreWeek1;
    PlayerOverallScoreLabel.text = currentPlayer.PlayerOverallScore;
}

@end
