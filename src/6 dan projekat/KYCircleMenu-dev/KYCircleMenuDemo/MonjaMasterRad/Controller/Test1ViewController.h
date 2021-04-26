//
//  Test1ViewController.h
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Semafor.h"

@interface Test1ViewController : UIViewController


@property (nonatomic, strong) Semafor *semafor;

@property (strong, nonatomic) UIView *rView;
@property (strong, nonatomic) UIView *yView;
@property (strong, nonatomic) UIView *gView;

@property (nonatomic, strong)  UIButton *ukljuciSemafor;
@property (nonatomic, strong)  UIButton *iskljuciSemafor;
@property (nonatomic, strong)  UIButton *pokvariSemafor;
@property (nonatomic, strong)  UIButton *popraviSemafor;

@property (nonatomic, strong) UILabel *lblStanjeSemafora;

@property (assign) int counter;


@end
