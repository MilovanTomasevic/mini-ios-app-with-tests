//
//  Lav.h
//  Zadatak20
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lav : NSObject

@property (nonatomic,strong) NSString* imeLava;
@property (nonatomic,strong) NSString* bojaLava;
@property (nonatomic) int brzinaLava; //moze niti nonnulable
@property (nonatomic) int snagaLava;
@property (nonatomic) bool daLiSeMozeBoriti;

- (instancetype)initWithImeLava: (NSString*) imeLava andBojaLava: (NSString *) bojaLava 
                   andSnagaLava: (int) snagaLava andBrzinaLava: (int) brzinaLava andMozeLiSeBoriti: (bool) mozeLiSeBoriti;

- (instancetype)initWithImeLava: (NSString *) imeLava;

@end
