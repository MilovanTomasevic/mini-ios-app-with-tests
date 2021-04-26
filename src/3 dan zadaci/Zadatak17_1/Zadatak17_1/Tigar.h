//
//  Tigar.h
//  Zadatak17_1
//
//  Created by Milovan Tomasevic on 18/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tigar : NSObject

@property (nonatomic, strong) NSMutableString *imeTigra;
@property (nonatomic, copy) NSMutableString *imeTigraKopija;
//@property (nonatomic, assign) int brzinaTigra; // upotreba assign memorijske direktive, mada ona vise nije neophodna, dovoljno je staviti samo nonatomic
@property (nonatomic) int brzinaTigra; // ovo je konstanta, isto kao read-only

@end
