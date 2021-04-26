//
//  Kompjuter.h
//  Zadatak21
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Kompjuter : NSObject

@property (nonatomic, strong) NSString *ime;
@property (nonatomic, strong) NSString *operativniSistem;
@property (nonatomic) int rami;
@property (nonatomic) int snaga;
@property (nonatomic) int brzina;

- (instancetype)initWithImeKompjutera: (NSString*) ime andOSKompjutera: (NSString*) operativniSistem
                    andRamiKompjutera: (int) ramiKompjutera andSnagaKompjutera: (int) snagaKompjutera
                  andBrzinaKompjutera: (int) brzinaKompjutera;

@end
