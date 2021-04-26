//
//  Semafor.h
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, states) {
    sFIX,
    sOUT,
    sON
};

typedef NS_ENUM(NSUInteger, colors) {
    cNONE,
    cBLINK,
    cRED,
    cYELLOWRED,
    cGREEN,
    cYELLOW
};


@interface Semafor : NSObject

@property(nonatomic)states stanjeSemafora;
@property(nonatomic)colors bojeSemafora;

@end
