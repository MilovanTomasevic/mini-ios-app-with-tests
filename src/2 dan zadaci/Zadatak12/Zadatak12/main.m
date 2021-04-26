//
//  main.m
//  Zadatak12
//
//  Created by Milovan Tomasevic on 17/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSDictionary* mojRecnikStringova  = [[NSDictionary alloc]
                                         initWithObjectsAndKeys:
                                         @"prvi string", @"prvi kljuc",
                                         @"drugi string", @"drugi kljuc", nil];
    NSString* mojaPrvaVrednostIzRecnika = [mojRecnikStringova objectForKey: @"prvi kljuc"];
    NSLog(@"%@", mojaPrvaVrednostIzRecnika);
    
    NSString* mojaDrugaVrednostIzRecnika = [mojRecnikStringova objectForKey: @"drugi kljuc"];
    NSLog(@"%@", mojaDrugaVrednostIzRecnika);
    
    NSDictionary* mojRecnikIntedzera = @{ @"kljuc1": @1, @"kljuc2": @2}; // koriscenjem ove sintakse automatski se poziva alokacija
    int broj1 = [mojRecnikIntedzera[@"kljuc1"] intValue]; // ne moze bez konverzije
    NSLog(@"%d", broj1);
    
    int broj2 = [mojRecnikIntedzera[@"kljuc2"] intValue];
    NSLog(@"%d", broj2);
    
    NSDictionary* mojRecnikRacionalnih = [NSDictionary dictionaryWithObjectsAndKeys: @"1.32", @"prviKljucRacionalnih" ,nil];
    float mojRacionalniBroj = [mojRecnikRacionalnih[@"prviKljucRacionalnih"] floatValue];
    NSLog(@"%f", mojRacionalniBroj);
    
    
    return 0;
}
