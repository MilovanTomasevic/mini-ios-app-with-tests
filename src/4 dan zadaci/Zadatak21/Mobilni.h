//
//  Mobilni.h
//  Zadatak21
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kompjuter.h"

@interface Mobilni : Kompjuter

@property (nonatomic, strong) NSString* tipEkrana;
@property (nonatomic, strong) NSString* tipTastasture;


- (instancetype)initWithImeKompjutera:(NSString *)ime andOSKompjutera:(NSString *)operativniSistem andRamiKompjutera:(int)ramiKompjutera andSnagaKompjutera:(int)snagaKompjutera andBrzinaKompjutera:(int)brzinaKompjutera
                         andTipEkrana: (NSString*) tipEkrana andTipTastature: (NSString*) tipTastature;

@end
