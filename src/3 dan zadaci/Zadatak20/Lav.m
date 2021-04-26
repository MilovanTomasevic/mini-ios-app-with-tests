//
//  Lav.m
//  Zadatak20
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import "Lav.h"

@implementation Lav


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.brzinaLava = 200;
    }
    return self;
}

// custom initialisers
- (instancetype)initWithImeLava: (NSString*) imeLava andBojaLava: (NSString *) bojaLava //initWith je obavezno jer tako objectiveC prepoznaje moj inicijalajzer
                   andSnagaLava: (int) snagaLava andBrzinaLava: (int) brzinaLava andMozeLiSeBoriti: (bool) mozeLiSeBoriti
{
    self = [super init];
    if (self) {
        
        self.imeLava = imeLava;
        self.bojaLava = bojaLava;
        self.snagaLava = snagaLava;
        self.brzinaLava = brzinaLava;
        self.daLiSeMozeBoriti = mozeLiSeBoriti;
        
    }
    return self;
}

- (instancetype)initWithImeLava: (NSString *) imeLava
{
    self = [super init];
    if (self) {
        self.imeLava = imeLava;
    }
    return self;
}

@end
