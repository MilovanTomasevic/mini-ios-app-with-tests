//
//  Citati.m
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 23/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "Citati.h"

@implementation Citati

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.myQuotes = [[NSArray alloc]initWithObjects:
                         @"Lupus in fabula",
                         @"Veni, vidi, vici",
                         @"Blago onom ko dovijek zivi, imao se rasta i roditi",
                         @"Preko zvijezda do trnja",
                         @"Tvrd je orah vocka cudnovata",
                         @"Neka bude borba neprestana, neka bude sto biti ne moze",
                         @"Kocka je bacena",
                         @"Najbolje stvari u zivotu su besplatne, ili mnogo skupe",
                         @"Drzite visoko glavu, stikle i standarde",
                         nil];
    }
    return self;
}

-(NSString*) returnRandomQuote{
    
    int randomIndex = arc4random_uniform((int) self.myQuotes.count);
    return [self.myQuotes objectAtIndex: randomIndex];
}

@end
