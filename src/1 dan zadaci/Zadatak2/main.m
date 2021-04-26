//
//  main.m
//  Zadatak2
//
//  Created by Milovan Tomasevic on 12/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    int snagaZivotinje = 20;
    int brzinaZivotinje = 20;
    float tezinaZivotinje = 50.50;
    double visinaZivotinje = 100.25;
    bool mozeLiSeBoriti = YES;
    bool mozeLiLetjeti = NO;
    
    NSLog(@"Ovo je snaga zivotinje: %d, brzina zivotinje: %d, tezina zivotinje: %f, visina zivotinje: %f, moze li se boriti: %i, moze li letjeti: %i", snagaZivotinje, brzinaZivotinje, tezinaZivotinje, visinaZivotinje, mozeLiSeBoriti, mozeLiLetjeti);
          
    return 0;
}
