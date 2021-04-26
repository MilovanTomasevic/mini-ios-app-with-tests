//
//  SecondPageViewController.h
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "BasePageViewController.h"

@interface SecondPageViewController : BasePageViewController


@property (nonatomic, strong) UILabel *lblIme;
@property (nonatomic, strong) UILabel *lblPrezime;
@property (nonatomic, strong) UILabel *lblAdresa;
@property (nonatomic, strong) UILabel *lblGrad;
@property (nonatomic, strong) UILabel *lblPKod;


@property (nonatomic, strong) UITextField *imeField;
@property (nonatomic, strong) UITextField *prezimeField;
@property (nonatomic, strong) UITextField *adresaField;
@property (nonatomic, strong) UITextField *gradField;
@property (nonatomic, strong) UITextField *pKodField;


@end
