//
//  Test4ViewController.h
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Test4ViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, strong) UILabel *lblKorisnickoIme;
@property (nonatomic, strong) UILabel *lblSifra;

@property (nonatomic, strong) UITextField *textFieldKorisnickoIme;
@property (nonatomic, strong) UITextField *textFieldSifra;

@property (strong, nonatomic) UIButton *btnLogujSe;

@end
