//
//  main.m
//  Zadatak22
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mobilni.h"
#import "Laptop.h"
#import "NekiDrugiKompjuter.h"

int main(int argc, const char * argv[]) {
   
    Mobilni *mojMobilni = [[Mobilni alloc] init];
    
    [mojMobilni upali];
    [mojMobilni ugasi];
    
    Laptop *mojLaptop = [[Laptop alloc] init];
    
    [mojLaptop upali];
    [mojLaptop ugasi];
    
    NekiDrugiKompjuter *nepoznatKomp = [[NekiDrugiKompjuter alloc]init];
    
    [nepoznatKomp upali];
    [nepoznatKomp ugasi];
    
    
    
    return 0;
}
