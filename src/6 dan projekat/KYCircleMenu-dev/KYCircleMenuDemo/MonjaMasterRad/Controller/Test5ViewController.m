//
//  Test5ViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "Test5ViewController.h"
#import "MasterViewController.h"

@interface Test5ViewController ()

@end

@implementation Test5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGFloat sirinaPolja = self.view.frame.size.width * 0.6;
    int visinaPolja = 40;

    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"About"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(AboutButtonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    
    self.buttonRegistar = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - sirinaPolja/2, self.view.frame.size.height/2, sirinaPolja, visinaPolja)];
    
    [_buttonRegistar setTitle:NSLocalizedString(@"Registracija",nil) forState:UIControlStateNormal];
    _buttonRegistar.layer.cornerRadius = 7;
    [_buttonRegistar addTarget:self action:@selector(registarButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [_buttonRegistar setBackgroundColor: [ UIColor orangeColor]];
    
    NSMutableAttributedString *titleOnButton = [[NSMutableAttributedString alloc] initWithString:_buttonRegistar.titleLabel.text];
    [titleOnButton addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, [titleOnButton length])];
    [titleOnButton addAttribute:NSForegroundColorAttributeName value:[[UIColor whiteColor] colorWithAlphaComponent:0.8] range:NSMakeRange(0,[titleOnButton length])];
    [_buttonRegistar setAttributedTitle:titleOnButton forState:UIControlStateNormal];
    _buttonRegistar.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;

    [self.view addSubview:_buttonRegistar];
}

-(void)registarButtonClicked:(UIButton*)sender
{
    NSLog(@"Registar button clicked");
    
    MasterViewController *mvc = [[MasterViewController alloc] init];
    [mvc setTitle:[NSString stringWithFormat:@"Registracija"]];
    [mvc.view setBackgroundColor:[UIColor whiteColor]];
    [self.navigationController pushViewController:mvc animated:YES];
}

- (void)AboutButtonPressed
{
    
    NSString *message = @"\n Sve o refistraciji\n";
    
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:@"Opis"
                                          message:message
                                          preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Ok"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                    //[self clearAllData];
                                }];
    
    //    UIAlertAction* noButton = [UIAlertAction
    //                               actionWithTitle:@"Cancel"
    //                               style:UIAlertActionStyleDefault
    //                               handler:^(UIAlertAction * action) {
    //                                   //Handle no, thanks button
    //                               }];
    //
    //Add your buttons to alert controller
    
    [alertController addAction:yesButton];
    //[alert addAction:noButton];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


@end
