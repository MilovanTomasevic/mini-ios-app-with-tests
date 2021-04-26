//
//  main.m
//  Zadatak21
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mobilni.h"

int main(int argc, const char * argv[]) {
   
    Mobilni *mojMobilni = [[Mobilni alloc] initWithImeKompjutera:@"ajfonSE" andOSKompjutera:@"iOS 11" andRamiKompjutera:1000 andSnagaKompjutera:200 andBrzinaKompjutera:5000 andTipEkrana:@"touch" andTipTastature:@"cirilicka"];
    
    
    NSLog(@"%@", mojMobilni.ime);
    NSLog(@"%@", mojMobilni.operativniSistem);
    NSLog(@"%d", mojMobilni.rami);
    NSLog(@"%d", mojMobilni.snaga);
    NSLog(@"%d", mojMobilni.brzina);
    NSLog(@"%@", mojMobilni.tipEkrana);
    NSLog(@"%@", mojMobilni.tipTastasture);
    
    
    return 0;
}
