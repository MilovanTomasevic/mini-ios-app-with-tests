//
//  main.m
//  Zadatak14
//
//  Created by Milovan Tomasevic on 17/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //forin petlja
    
    NSArray* mojNiz = @[@"a", @"b", @"c", @"d"];
    
    for (NSString* vrednostStringa in mojNiz) {
        NSLog(@"%@", vrednostStringa);
    }
    
    
    return 0;
}
