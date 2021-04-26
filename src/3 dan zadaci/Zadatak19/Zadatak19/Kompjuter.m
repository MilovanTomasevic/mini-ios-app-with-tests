//
//  Kompjuter.m
//  Zadatak19
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//
//komunicira se samo sa headerom, nikako sa implementaion
#import "Kompjuter.h"

@implementation Kompjuter


-(void) ukljuciKompjuter {
    
    NSLog(@"Kompjuter je ukljucen.");
    
}

-(void) iskljuciKompjuter {
    
    NSLog(@"Kompjuter je sada iskljucen.");
}

-(int) proceniVrednostKompjuteraSaKompjuterskimRamima: (int) ramiKomp andKompjuterskomSnagom: (int) snagaKomp andBrzinomKompjutera: (int)brzinaKomp {
    
    /*dodijelicemo instanci ove vrijednosti zbog konzistentnosti*/
    self.ramiKompjutera = ramiKomp;
    self.snagaKompjutera = snagaKomp;
    self.brzinaKompjutera = brzinaKomp;
    
    int vrednostKompjutera = ramiKomp * snagaKomp * brzinaKomp;
   // NSLog(@"Vrednost instance Vaseg kompjutera je %d", vrednostKompjutera);
    return vrednostKompjutera;
}

@end
