//
//  Leaderboard.m
//  jsontest
//
//  Created by James Sreenan on 13/03/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import "Leaderboard.h"

@implementation Leaderboard

@synthesize userForename, userSurname, teamName, userCounty, teamScore;

- (id) initWithUserForename: (NSString *) uForename andUserSurname: (NSString *) uSurname andTeamName: (NSString *) tName andUserCounty: (NSString *) uCounty andTeamScore: (NSString *) tScore
{
    self = [super init];
    if (self)
    {
        userForename = uForename;
        userSurname = uSurname;
        teamName = tName;
        userCounty = uCounty;
        teamScore = tScore;
    }
    return self;
}

@end
