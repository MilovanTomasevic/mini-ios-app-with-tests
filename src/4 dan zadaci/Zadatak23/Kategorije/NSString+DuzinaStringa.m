//
//  NSString+DuzinaStringa.m
//  Zadatak23
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import "NSString+DuzinaStringa.h"

@implementation NSString (DuzinaStringa)

- (void) istampajDuzinuStringa{
    
    NSLog(@"Duzina stringa je: %lu", (unsigned long)[self length]);
}


@end
