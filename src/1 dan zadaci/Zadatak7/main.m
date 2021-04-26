//
//  main.m
//  Zadatak7
//
//  Created by Milovan Tomasevic on 12/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int snagaBoksera = 6;
    
    while (snagaBoksera <10){
        
        NSLog(@"Mogu ja to!");
        snagaBoksera++; // moze i snagaBoksera += 1;
        
    }
    
    do {
        
        NSLog(@"Do while primjer.");
        snagaBoksera--;    // da ne bi bila beskonacmna petlja
        
    } while (snagaBoksera > 5);
    
    return 0;
}
