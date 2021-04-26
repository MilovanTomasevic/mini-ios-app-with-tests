//
//  Mobilni.m
//  Zadatak21
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import "Mobilni.h"

@implementation Mobilni

- (instancetype)initWithImeKompjutera:(NSString *)ime andOSKompjutera:(NSString *)operativniSistem andRamiKompjutera:(int)ramiKompjutera andSnagaKompjutera:(int)snagaKompjutera andBrzinaKompjutera:(int)brzinaKompjutera
                         andTipEkrana: (NSString*) tipEkrana andTipTastature: (NSString*) tipTastature
{
    self = [super initWithImeKompjutera: ime andOSKompjutera:operativniSistem andRamiKompjutera:ramiKompjutera andSnagaKompjutera:snagaKompjutera andBrzinaKompjutera:brzinaKompjutera];
    if (self) {
        self.tipEkrana = tipEkrana;
        self.tipTastasture = tipTastature;
    }
    return self;
}

@end
