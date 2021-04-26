//
//  main.m
//  Zadatak20
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lav.h"

int main(int argc, const char * argv[]) {
   
    Lav *mojLav = [[Lav alloc] init];
    
    NSLog(@"%d", mojLav.brzinaLava);
    //mojLav.brzinaLava = 100; umjesto ovoga smo pravili init
    
    Lav *drugiLav = [[Lav alloc] initWithImeLava:@"Leo" andBojaLava:@"Zuta" andSnagaLava:400 andBrzinaLava:20 andMozeLiSeBoriti:YES];
    
    NSLog(@"%@", drugiLav.imeLava);
    NSLog(@"%@", drugiLav.bojaLava);
    NSLog(@"%d", drugiLav.brzinaLava);
    NSLog(@"%d", drugiLav.snagaLava);
    NSLog(@"%i", drugiLav.daLiSeMozeBoriti);
    
    Lav *treciLav = [[Lav alloc] initWithImeLava:@"Zulu"];
    NSLog(@"%@", treciLav.imeLava);
    NSLog(@"%@", treciLav.bojaLava); //ovo ce biti null jer to nismo sa ovim inicijalajzerom inicijalizovali
    
    
    
    return 0;
}
