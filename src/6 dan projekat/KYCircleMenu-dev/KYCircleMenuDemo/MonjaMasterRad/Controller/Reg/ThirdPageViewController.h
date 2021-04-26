//
//  ThirdPageViewController.h
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "BasePageViewController.h"

@interface ThirdPageViewController : BasePageViewController


@property (nonatomic, strong) UILabel *lblBrojKartice;
@property (nonatomic, strong) UILabel *lblTelefon;
@property (nonatomic, strong) UILabel *lblPitanje;

@property (nonatomic, strong) UITextField *brojKarticeField;
@property (nonatomic, strong) UITextField *telefonField;
@property (nonatomic, strong) UITextField *odgovorField;

@property (nonatomic, strong) UIButton *btnSelection;


@end
