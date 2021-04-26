//
//  main.m
//  Zadatak19
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kompjuter.h"

int main(int argc, const char * argv[]) {
    
    Kompjuter *mojAjfon = [[Kompjuter alloc] init];
    
    // mojAjfon.ukljuciKompjuter; // ovo ne moze
    [mojAjfon ukljuciKompjuter]; // ovo je ispravna sintaksa za poziv metode
    
    [mojAjfon iskljuciKompjuter];
   // [mojAjfon proceniVrednostKompjuteraSaKompjuterskimRamima:200 andKompjuterskomSnagom:300 andBrzinomKompjutera:400];
    
    //NSLog(@"%d",[mojAjfon proceniVrednostKompjuteraSaKompjuterskimRamima:200 andKompjuterskomSnagom:300 andBrzinomKompjutera:400]);
    int vrednostAjfona = [mojAjfon proceniVrednostKompjuteraSaKompjuterskimRamima:200 andKompjuterskomSnagom:300 andBrzinomKompjutera:400];
    NSLog(@"%d", vrednostAjfona); // ipak najbolje napraviti promjenljivu koju kasnije mogu koristiti
    NSLog(@"Sada je vrijednost rama: %d", mojAjfon.ramiKompjutera);
    
    return 0;
}
