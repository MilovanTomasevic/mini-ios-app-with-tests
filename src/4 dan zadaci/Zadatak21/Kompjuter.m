//
//  Kompjuter.m
//  Zadatak21
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import "Kompjuter.h"

@implementation Kompjuter


- (instancetype)initWithImeKompjutera: (NSString*) ime andOSKompjutera: (NSString*) operativniSistem
                andRamiKompjutera: (int) ramiKompjutera andSnagaKompjutera: (int) snagaKompjutera
                  andBrzinaKompjutera: (int) brzinaKompjutera
{
    self = [super init];
    if (self) {
        self.ime = ime;
        self.operativniSistem = operativniSistem;
        self.rami = ramiKompjutera;
        self.snaga = snagaKompjutera;
        self.brzina = brzinaKompjutera;
    }
    return self;
}

@end
