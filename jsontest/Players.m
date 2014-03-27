//
//  Players.m
//  jsontest
//
//  Created by Daniel Hoy on 20/02/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import "Players.h"

@implementation Players

@synthesize PlayerID, PlayerName, PlayerCounty, Position, PlayerScoreWeek1, PlayerOverallScore;

- (id) initWithPlayerName: (NSString *)pName andPlayerCounty: (NSString *)pCounty andPosition: (NSString *)position andPlayerScoreWeek1: (NSString *)pScoreWeek1 andPlayerOverallScore: (NSString *)pOverallScore andPlayerID: (NSString *)pID;
{
    
    self  = [super init];
    if (self)
    {
        PlayerName = pName;
        PlayerCounty = pCounty;
        Position = position;
        PlayerScoreWeek1 = pScoreWeek1;
        PlayerOverallScore = pOverallScore;
        PlayerID = pID;
    }
    return self;

}
@end
