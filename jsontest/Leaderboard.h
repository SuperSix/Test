//
//  Leaderboard.h
//  jsontest
//
//  Created by James Sreenan on 13/03/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Leaderboard : NSObject

@property (strong, nonatomic) NSString * userForename;
@property (strong, nonatomic) NSString * userSurname;
@property (strong, nonatomic) NSString * teamName;
@property (strong, nonatomic) NSString * userCounty;
@property (strong, nonatomic) NSString * teamScore;


- (id) initWithUserForename: (NSString *) uForename andUserSurname: (NSString *) uSurname andTeamName: (NSString *) tName andUserCounty: (NSString *) uCounty andTeamScore: (NSString *) tScore;
@end
