//
//  main.m
//  Zadatak11
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
 
    NSMutableArray* mojaPromenljivaListaReci = [[NSMutableArray alloc] initWithObjects: @"a",@"b",@"c", nil];
    NSLog(@"%@", mojaPromenljivaListaReci[0]);
    NSLog(@"%@", mojaPromenljivaListaReci[1]);
    NSLog(@"%@", mojaPromenljivaListaReci[2]);
    
    [mojaPromenljivaListaReci addObject: @"d"];
    NSLog(@"%@", mojaPromenljivaListaReci[3]);
    [mojaPromenljivaListaReci insertObject: @"z" atIndex: 2]; // ne moze na nepostojeci indeks
    NSLog(@"%@", mojaPromenljivaListaReci[2]);
    
    
    NSArray* primjerListe =[ [NSArray alloc] initWithObjects: @21, @23, @25, nil];
    NSString* primjerStringa = [[NSString alloc] initWithString: @"primjer"];
    NSLog(@"%@", primjerStringa);
    return 0;
}
