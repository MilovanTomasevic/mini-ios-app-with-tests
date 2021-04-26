//
//  main.m
//  Zadatak18
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lav.h"

int main(int argc, const char * argv[]) {
   
    Lav *mojLav = [[Lav alloc] init];
    NSLog(@"%d", mojLav.brzinaLava);
    NSLog(@"%@", mojLav.bojaLava);
    
    Lav *drugiLav = [[Lav alloc] init];
    NSLog(@"%d", drugiLav.brzinaLava);
    NSLog(@"%@", drugiLav.bojaLava);
    
    
    
    return 0;
}
