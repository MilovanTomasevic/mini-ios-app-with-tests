//
//  main.m
//  Zadatak24
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
   
    
    NSString *mojaStringVrednost = @"String objekat";
    NSLog(@"%@", mojaStringVrednost);
    NSLog(@"%p", &mojaStringVrednost); // adresa u memoriji nase promjenljive tj. odnosi se na istu memoriju gdje je nasa promjenljiva
    
    // * dereference operator - izguglaj
    //& reference operator - stack overflow objasnjenje
    
    int mojaIntegerVrednost = 50;
    NSLog(@"%d", mojaIntegerVrednost);
    NSLog(@"%p", &mojaIntegerVrednost);

    return 0;
}
