//
//  Test2ViewController.h
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Citati.h"

@interface Test2ViewController : UIViewController

// properties
@property (nonatomic, strong) Citati *citati;

@property (strong, nonatomic) UILabel *lblCitatiTitle;
@property (strong, nonatomic) UITextView *textViewCitat;
@property (strong, nonatomic) UIButton *btnSledeci;


@end
