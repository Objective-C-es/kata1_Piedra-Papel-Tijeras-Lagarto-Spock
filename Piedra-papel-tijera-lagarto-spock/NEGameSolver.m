// Archy - Copyright (c) 2011-2013
// Author: Giuseppe Basile
// Sharit Application SL. All rights reserved

#import "NEGameSolver.h"

@implementation NEGameSolver

+ (NEGameResult)solvedHand:(NEGameHand)hand1 withHand:(NEGameHand)hand2
{
    if ([self tieGameWithHand1:hand1 hand2:hand2]) {
        return NEGameResultTie;
    }
    
    if ([self hand2WinsWithHand1:hand1 hand2:hand2]) {
        return NEGameResultHand2Win;
    }
    
    return NEGameResultHand1Win;
}

+ (BOOL)tieGameWithHand1:(NEGameHand)hand1 hand2:(NEGameHand)hand2
{
    if (hand1 == hand2) {
        return YES;
    }
    return NO;
}

+ (BOOL)hand2WinsWithHand1:(NEGameHand)hand1 hand2:(NEGameHand)hand2
{
    if ((hand1 == NEGameHandPapel && hand2 == NEGameHandTijeras) ||
        (hand1 == NEGameHandPiedra && hand2 == NEGameHandPapel ) ||
        (hand1 == NEGameHandLagarto && hand2 == NEGameHandPiedra) ||
        (hand1 == NEGameHandSpock && hand2 == NEGameHandLagarto) ||
        (hand1 == NEGameHandTijeras && hand2 == NEGameHandSpock) ||
        (hand1 == NEGameHandLagarto && hand2 == NEGameHandTijeras) ||
        (hand1 == NEGameHandPapel && hand2 == NEGameHandLagarto) ||
        (hand1 == NEGameHandSpock && hand2 == NEGameHandPapel) ||
        (hand1 == NEGameHandPiedra && hand2 == NEGameHandSpock) ||
        (hand1 == NEGameHandTijeras && hand2 == NEGameHandPiedra))
    {
        return YES;
    }
    
    return NO;
}

@end
