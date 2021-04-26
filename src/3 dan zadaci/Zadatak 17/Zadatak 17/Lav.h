//
//  Lav.h
//  Zadatak 17
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lav : NSObject

//properties


/*
 nonatomic - kako ce se ponasati u multitredingu, u slucaju multitredinga koristiti atomic
 strong - memorijska direktiva
 
 Memorijske direktive:
 se odnose na ARC - Automatic Refrence Counting - Svaka alokacija memorije - instanciranje objekta
 Strong - create a refrence to that specific object inside the memory and maintains the refrence
 and
 as a result it's gonna increase the refrence count of that object by 1
 znaci svaki put kada imenujem lava ili mu dam boju povecace broj referenci na taj prpperti za 1 i zadrzace tu referencu
 (zauzece memoriju) i onda se moze dealocirati objekat iz memorije da bi memoriju mogao neko drugi koristi.ako se ne zadrzi referenca sa strong, program bi mogao puci, jer ako nesto kasnije pozove taj objekat njega nece biti u memoriji (ARC ce ga obrisati ili ce dibager upozoriti)
 Weak - we are pointing to that specific object in the memory, but it's reference count ain't gonna be increased
 i dalje zadrzavamo memoriju, ali ne uvecavamo referencu.koristi se u nasledjivanju.parent ima strong prema djetetu, a dijete weak na roditelja.vise o tome kasnije.
 read-only - kada se jednom inicijalizuje properti ne moze se mijenjati vrijednost (const u javi  - konstanta)
 copy - pravi kopiju objekta i pokazivace na kopiju objekta.povecace referncu  kopije na 1
 */

@property (nonatomic) int snagaLava; // kada stavimoi @property - to nam daje 2 metode pristupa propertiju klase, metode set i get
@property (nonatomic) int brzinaLava;
@property (nonatomic, strong) NSString *imeLava; // strong je memorijska direktiva
@property (nonatomic, strong) NSString *bojaLava;
@property (nonatomic) bool mozeLiSeBoriti;

@end
