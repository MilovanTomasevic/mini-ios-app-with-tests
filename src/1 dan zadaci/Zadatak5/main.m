//
//  main.m
//  Zadatak5
//
//  Created by Milovan Tomasevic on 12/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

enum ZivotinjskaImena {
    Lav = 1, //ako ne stavimo nista krece od 0, dalje automatski inkrementira.mogu svakom dodijeliti vrijednost
    Konj,
    Delfin,
    Majmun,
    Zmija,
    mm
};

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
 /*   NSString *imeZivotinje = @"Lav"; // ovako nije moglo, pa smo napravili enumeraciju
  */
    int imeZivotinje = mm;
    
    NSLog(@"%d", Majmun);
    
   switch (imeZivotinje) {
        case Lav:
           NSLog(@"Ovo je lav.");
           break;
       case Konj:
           NSLog(@"Ovo je konj.");
           break;
       case Delfin:
           NSLog(@"Ovo je delfin.");
           break;
       case Majmun:
           NSLog(@"Ovo je majmun.");
           break;
       case Zmija:
           NSLog(@"Ovo je zmija.");
           break;
        default:
           NSLog(@"Nepoznata zivotinja.");
            break;
  }
    return 0;
}
