//
//  Test3ViewController.h
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Test3ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) UIButton *btnPrikaz;


@property (nonatomic, strong) UILabel *lblDatum;
@property (nonatomic, strong) UILabel *lblZona;
@property (nonatomic, strong) UILabel *lblCena;
@property (nonatomic, strong) UILabel *lblRegistracija;
@property (nonatomic, strong) UILabel *lblMesto;
@property (nonatomic, strong) UILabel *lblTipKazne;


@property (nonatomic, strong) UITextField *textFieldDatum;
@property (nonatomic, strong) UITextField *textFieldCena;
@property (nonatomic, strong) UITextField *textFieldRegistracija;
@property (nonatomic, strong) UITextField *textFieldMesto;

@property (nonatomic, strong) UISegmentedControl *segmentedControl;
@property (nonatomic, strong) UISegmentedControl *zoneControl;
@property (nonatomic, strong) UISegmentedControl *kazneControl;

@property (nonatomic, strong) UIView *fakeView;



@end
