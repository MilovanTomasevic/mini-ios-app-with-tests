//
//  main.m
//  Zadatak10
//
//  Created by Milovan Tomasevic on 17/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSArray* listaCelihBrojeva = @[@1, @2, @3, @4]; //kada se stavi @ ovo postaju objekti tipa NSNumber
    
    int mojCeoBroj = [listaCelihBrojeva[0] intValue]; //indeksiranje pocinje od 0 i ovo je poziv metode intValue]
    
    NSLog(@"%d", mojCeoBroj);
    
    int drugiCeoBroj = [listaCelihBrojeva[1] intValue];
    NSLog(@"%d", drugiCeoBroj);
    
    int treciCeoBroj = [listaCelihBrojeva[2] intValue];
    NSLog(@"%d", treciCeoBroj);
    
    NSArray* mojaListaReci = @[@"prva", @"druga"];
    
    NSString* prvaRec = mojaListaReci[0];
    NSLog(@"%@", prvaRec);
    
    NSString* drugaRec = mojaListaReci[1];
    NSLog(@"%@", drugaRec);
    
    return 0;
}
