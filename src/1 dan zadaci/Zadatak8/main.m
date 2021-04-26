//
//  main.m
//  Zadatak8
//
//  Created by Milovan Tomasevic on 12/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int snagaBoksera = 100;
    int brzinaBoksera;
    brzinaBoksera = 200;
    
    int bokserIzdrzljivost = 500;
    
    bool daLiJeSpreman = snagaBoksera = brzinaBoksera <= 300;
    //NSLog(@"Da li je bokser spreman? %i", daLiJeSpreman);
    NSLog(@"Da li je bokser spreman? %s", daLiJeSpreman ? "Da" : "Ne");
    
    daLiJeSpreman = bokserIzdrzljivost != 1000;
    NSLog(@"Da li je bokser spreman? %s", daLiJeSpreman ? "Jeste" : "Ne, nije");
    
    
    return 0;
}
