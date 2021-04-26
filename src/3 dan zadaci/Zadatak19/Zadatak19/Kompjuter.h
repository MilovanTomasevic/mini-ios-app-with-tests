//
//  Kompjuter.h
//  Zadatak19
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Kompjuter : NSObject

@property (nonatomic, strong) NSString* imeKompjutera;
@property (nonatomic, strong) NSString* bojaKompjutera;
@property (nonatomic) int ramiKompjutera;
@property (nonatomic) int brzinaKompjutera;
@property (nonatomic) int snagaKompjutera;

//Metode
-(void) ukljuciKompjuter; // da bi se metode iz .m koristile njihiv potpis mora da se ubaci ovde u h

-(void) iskljuciKompjuter;

-(int) proceniVrednostKompjuteraSaKompjuterskimRamima: (int) ramiKomp andKompjuterskomSnagom: (int) snagaKomp andBrzinomKompjutera: (int)brzinaKomp;

@end
