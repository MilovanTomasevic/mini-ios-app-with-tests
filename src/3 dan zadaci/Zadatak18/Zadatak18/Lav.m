//
//  Lav.m
//  Zadatak18
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import "Lav.h"

@implementation Lav

- (instancetype)init   // - se koristi za kreiranje metoda instanci, a postoje i metode klasa, obiljeyavaju se sa +
{                       // sada ce se umjesto default inita, pozvati ovaj moj koji pravim
    self = [super init]; // self referise samu instancu, super je nasledjivanje inita (NSObject podrazumjevani init)
    if (self) {        // ako ima self, tj. gornja linija
        self.bojaLava = @"Zuta";
        self.brzinaLava = 100;
    }
    return self;
}

@end
