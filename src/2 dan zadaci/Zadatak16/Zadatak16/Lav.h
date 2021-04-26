//
//  Lav.h
//  Zadatak16
//
//  Created by Milovan Tomasevic on 17/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lav : NSObject

//properties


/*
 nonatomic - kako ce se ponasati u multitredingu, u slucaju multitredinga koristi se atomic
 strong - memorijska direktiva
 
 Memorijske direktive:
 ARC - Automatic Refrence Counting - Svaka alokacija memorije - instanciranje objekta
 Strong - create a refrence to that specofic object inside the memory and maintains the refrence and
          as a result it's gonna increase the refrence count of that object by 1
 znaci svaki put kada imenujem lava ili mu dam boju povecace broj referenci i onda se moze 
 */

@property (nonatomic) int snagaLava; // kada stavimoi @property - to nam daje 2 metode pristupa propertiju klase, metode set i get
@property (nonatomic) int brzinaLava;
@property (nonatomic, strong) NSString *imeLava; // strong je memorijska direktiva
@property (nonatomic, strong) NSString *bojaLava;
@property (nonatomic) bool mozeLiSeBoriti;



@end
