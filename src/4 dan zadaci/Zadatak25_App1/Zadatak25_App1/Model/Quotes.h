//
//  Quotes.h
//  Zadatak25_App1
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Quotes : NSObject

// Properties

@property (nonatomic, strong) NSArray *myQuotes;

// Methods
-(NSString*) returnRandomQuote;

@end
