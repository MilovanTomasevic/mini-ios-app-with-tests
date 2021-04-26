//
//  Citati.h
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 23/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Citati : NSObject

// Properties

@property (nonatomic, strong) NSArray *myQuotes;

// Methods
-(NSString*) returnRandomQuote;

@end
