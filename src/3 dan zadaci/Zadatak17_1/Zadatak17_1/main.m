//
//  main.m
//  Zadatak17_1
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tigar.h"

int main(int argc, const char * argv[]) {
    
    Tigar *mojTigar = [[Tigar alloc] init];
    NSMutableString *imeTigra = [[NSMutableString alloc] initWithString:@"A Tigar"];
    
    [mojTigar setImeTigra:imeTigra];
    [mojTigar setImeTigraKopija:imeTigra];
    
    NSLog(@"%@", mojTigar.imeTigra);
    NSLog(@"%@", mojTigar.imeTigraKopija);
    
    [imeTigra setString:@"B Tigar"];

    NSLog(@"%@", mojTigar.imeTigra);
    NSLog(@"%@", mojTigar.imeTigraKopija); //on pokazuje na kopiju zato nece vidjeti novu vrijednost originala
    
    /*
     Nastavak price o memorijskim direktivama.
     retain and assign - koristili su se prije ARCa, mogu se vidjeti u starim verzijama objectiveCa.retain je isto sto i strong.
     medjutim assign se i dalje koristi za primitivne vrijednosti
     */
    
    return 0;
}
