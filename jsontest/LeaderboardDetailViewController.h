//
//  LeaderboardDetailViewController.h
//  jsontest
//
//  Created by James Sreenan on 18/03/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Leaderboard.h"

@interface LeaderboardDetailViewController : UIViewController


@property(nonatomic, strong) IBOutlet UILabel * userForenameLabel;
@property(nonatomic, strong) IBOutlet UILabel * userSurnameLabel;
@property(nonatomic, strong) IBOutlet UILabel * teamNameLabel;
@property(nonatomic, strong) IBOutlet UILabel * UserCountyLabel;
@property(nonatomic, strong) IBOutlet UILabel * teamScoreLabel;

@property(nonatomic, strong) Leaderboard * currentLeaderboard;

- (void)getLeaderboards:(id)leaderboardObjects;
- (void)setLabels;
@end
