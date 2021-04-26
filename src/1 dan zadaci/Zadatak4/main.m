//
//  main.m
//  Zadatak4
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
    int broj = 0;
    int brojPoena = 67;
    
    if (broj >= 0) {
        NSLog(@"Broj je veci ili jednak nuli.");
    }
    else
        NSLog(@"Broj je negativan.");
    
    if (brojPoena >= 55 && brojPoena < 65){
        NSLog(@"Ocjena 6");
        
    } else if (brojPoena >= 65 && brojPoena < 75){
        NSLog(@"Ocjena 7");
    } else if (brojPoena >= 75 && brojPoena < 85){
        NSLog(@"Ocjena 8");
    } else if (brojPoena >= 85 && brojPoena < 95){
        NSLog(@"Ocjena 9");
    } else if (brojPoena >= 95){
        NSLog(@"Ocjena 10");
    } else
        NSLog(@"Nije polozio");


return 0;
}
