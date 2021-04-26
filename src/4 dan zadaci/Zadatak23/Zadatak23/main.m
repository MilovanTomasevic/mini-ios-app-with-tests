//
//  main.m
//  Zadatak23
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+DuzinaStringa.h"
#import "NSMutableArray+ZdravoSveteArray.h"

int main(int argc, const char * argv[]) {

    [@"Zdravo" istampajDuzinuStringa];
    
    NSMutableArray* mojaPromenljivaLista = [[NSMutableArray alloc] init];
    
    [mojaPromenljivaLista addZdravoSvete];
    NSLog(@"%@", mojaPromenljivaLista[0]);
    
    return 0;
}
