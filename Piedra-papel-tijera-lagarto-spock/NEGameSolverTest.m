// Archy - Copyright (c) 2011-2013
// Author: Giuseppe Basile
// Sharit Application SL. All rights reserved

#import <SenTestingKit/SenTestingKit.h>

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#import "NEGameSolver.h"

@interface NEGameSolverTest : SenTestCase
@end

@implementation NEGameSolverTest

- (void)expectedResult:(NEGameResult)expectedResult forHand1:(NEGameHand)hand1 hand2:(NEGameHand)hand2
{
    assertThatUnsignedInt([NEGameSolver solvedHand:hand1 withHand:hand2], is(@(expectedResult)));
}

- (void)testManosIgualesEmpatan
{
    [self expectedResult:NEGameResultTie
                forHand1:NEGameHandSpock
                   hand2:NEGameHandSpock];
}

- (void)testManosDistintasNoEmpatan
{
    assertThatInt([NEGameSolver solvedHand:NEGameHandSpock withHand:NEGameHandLagarto], isNot(NEGameResultTie));
}

- (void)testTijerasCortanElPapel
{
    [self expectedResult:NEGameResultHand1Win
                forHand1:NEGameHandTijeras
                   hand2:NEGameHandPapel];
}

- (void)testPapelPierdeConTijeras
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandPapel
                   hand2:NEGameHandTijeras];
}

- (void)testPiedraPierdePapel
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandPiedra
                   hand2:NEGameHandPapel];
}

- (void)testPapelGanaPiedra
{
    [self expectedResult:NEGameResultHand1Win
                forHand1:NEGameHandPapel
                   hand2:NEGameHandPiedra];
}

- (void)testLagartoPierdeConPiedra
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandLagarto
                   hand2:NEGameHandPiedra];
}

- (void)testSpockHaSidoEnvenenadoPorUnLagarto
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandSpock
                   hand2:NEGameHandLagarto];
}

- (void)testTijerasDestrozadaPorSpock
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandTijeras
                   hand2:NEGameHandSpock];
}

- (void)testLagartoDecapitadoPorLasTijeras
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandLagarto
                   hand2:NEGameHandTijeras];
}

- (void)testPapelComidoPorElLagarto
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandPapel
                   hand2:NEGameHandLagarto];
}

- (void)testSpockRefutadoPorElPapel
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandSpock
                   hand2:NEGameHandPapel];
}

- (void)testPiedraVaporizadaPorSpock
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandPiedra
                   hand2:NEGameHandSpock];
}

- (void)testTijerasAplastadaPorLaPiedra
{
    [self expectedResult:NEGameResultHand2Win
                forHand1:NEGameHandTijeras
                   hand2:NEGameHandPiedra];
}

@end
