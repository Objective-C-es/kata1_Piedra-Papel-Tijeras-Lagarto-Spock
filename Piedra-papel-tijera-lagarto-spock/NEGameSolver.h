// Archy - Copyright (c) 2011-2013
// Author: Giuseppe Basile
// Sharit Application SL. All rights reserved

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, NEGameHand) {
    NEGameHandSpock,
    NEGameHandPiedra,
    NEGameHandPapel,
    NEGameHandTijeras,
    NEGameHandLagarto
};

typedef NS_ENUM(NSUInteger, NEGameResult) {
    NEGameResultTie,
    NEGameResultHand1Win,
    NEGameResultHand2Win
};

@interface NEGameSolver : NSObject
+ (NEGameResult) solvedHand:(NEGameHand)hand1 withHand:(NEGameHand)hand2;

@end
