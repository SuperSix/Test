//
//  LeaderboardDetailViewController.m
//  jsontest
//
//  Created by James Sreenan on 18/03/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import "LeaderboardDetailViewController.h"

@interface LeaderboardDetailViewController ()

@end

@implementation LeaderboardDetailViewController
@synthesize UserCountyLabel, userForenameLabel, userSurnameLabel, teamNameLabel, teamScoreLabel, currentLeaderboard;
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
    [self setLabels];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getLeaderboards:(id)leaderboardObjects;
{
    currentLeaderboard = leaderboardObjects;
}

- (void)setLabels;
{
    userForenameLabel.text = currentLeaderboard.userForename;
    userSurnameLabel.text = currentLeaderboard.userSurname;
    UserCountyLabel.text = currentLeaderboard.userCounty;
    teamNameLabel.text = currentLeaderboard.teamName;
    teamScoreLabel.text = currentLeaderboard.teamScore;
}
@end
