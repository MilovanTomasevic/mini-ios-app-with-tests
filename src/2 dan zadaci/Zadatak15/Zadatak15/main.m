//
//  main.m
//  Zadatak15
//
//  Created by Milovan Tomasevic on 17/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString* mojString = @"Hi world!"; //@"Hello world!";
    NSString* mojDrugiString = [mojString stringByAppendingString:@" Kako si?"]; // posto nije mutabilan, jedini nacin da dodamo nesto
    NSLog(@"%@", mojString);
    NSLog(@"%@", mojDrugiString);
    
    NSMutableString *mojPromenljiviString = [[NSMutableString alloc] initWithString:@"OK, hvala!"];
    [mojPromenljiviString appendString:@"Sjajno!"];
    NSLog(@"%@", mojPromenljiviString);
    // ima jos metoda replace i slicno za pogledati
    return 0;
}
