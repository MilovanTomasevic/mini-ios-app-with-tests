//
//  main.m
//  Zadatak 17
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lav.h"

int main(int argc, const char * argv[]) {
    
                                        /* ovo sve radi ARC*/
    
    Lav *mojLav = [[Lav alloc] init]; // refrence count = 1
    
    Lav *lav2 = mojLav; // refrence count = 2
    
    lav2 = nil; // refrence count = 1 ponovo
    
    NSLog(@"%i", mojLav.mozeLiSeBoriti);
    mojLav.snagaLava = 100;              
    NSLog(@"%d", mojLav.snagaLava);
    NSLog (@"%d", [mojLav snagaLava]);
    [mojLav setSnagaLava:300];
    NSLog (@"%d", [mojLav snagaLava]);
    
    mojLav.brzinaLava = 40;
    NSLog(@"%d", mojLav.brzinaLava);
    [mojLav setBrzinaLava:30];
    NSLog (@"%d", [mojLav brzinaLava]);
    
    mojLav.imeLava = @"Leo";
    NSLog (@"%@", [mojLav imeLava]);
    [mojLav setImeLava:@"Momo"];
    NSLog (@"%@", [mojLav imeLava]);
    
    mojLav.mozeLiSeBoriti = YES;
    NSLog (@"%i", [mojLav mozeLiSeBoriti]);
    [mojLav setMozeLiSeBoriti:YES];
    NSLog (@"%i", [mojLav mozeLiSeBoriti]);
    
    return 0;
}
