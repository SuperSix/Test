//
//  Players.h
//  jsontest
//
//  Created by Daniel Hoy on 20/02/2014.
//  Copyright (c) 2014 Daniel Hoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Players : NSObject

@property (nonatomic, strong) NSString * PlayerName;
@property (nonatomic, strong) NSString * PlayerCounty;
@property (nonatomic, strong) NSString * Position;
@property (nonatomic, strong) NSString * PlayerScoreWeek1;
@property (nonatomic, strong) NSString * PlayerOverallScore;
@property (nonatomic, strong) NSString * PlayerID;

#pragma mark -
#pragma mark Class Method

- (id) initWithPlayerName: (NSString *)pName andPlayerCounty: (NSString *)pCounty andPosition: (NSString *)position andPlayerScoreWeek1: (NSString *)pScoreWeek1 andPlayerOverallScore: (NSString *)pOverallScore andPlayerID: (NSString *)pID;


@end
