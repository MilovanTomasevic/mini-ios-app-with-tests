//
//  Test2ViewController.m
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "Test2ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self viewLoadProperty];
}

-(void)viewLoadProperty {
    
    self.citati = [[Citati alloc]init];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"About"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(AboutButtonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    
    CGFloat sirinaLabele = self.view.frame.size.width * 0.8;
    int margina = 5;
    int visina = 70;
    
    self.lblCitatiTitle = [[UILabel alloc]init];
    self.lblCitatiTitle.frame = CGRectMake(self.view.frame.size.width/2 - sirinaLabele/2, CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaLabele, visina/2);
    self.lblCitatiTitle.text = @"Citati";
    [self.lblCitatiTitle setBackgroundColor:[UIColor redColor]];
    [self.lblCitatiTitle setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:self.lblCitatiTitle];
    
    
    self.textViewCitat = [[UITextView alloc]init];
    self.textViewCitat.frame = CGRectMake(self.view.frame.size.width/2 - sirinaLabele/2, CGRectGetMaxY(self.lblCitatiTitle.frame)+3*margina, sirinaLabele, visina*0.65);
    self.textViewCitat.text = @"Klikom na dugme sledeci ovdje ce se prikazivati citati.";
    [self.textViewCitat setTextAlignment:NSTextAlignmentCenter];
    self.textViewCitat.userInteractionEnabled = NO;
    [self.textViewCitat setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:self.textViewCitat];
    
    
    self.btnSledeci = [[UIButton alloc] init];
    
    [self.btnSledeci addTarget:self
                            action:@selector(menjajCitat)
                  forControlEvents:UIControlEventTouchUpInside];
    
    [self.btnSledeci setTitle:@"Next" forState:UIControlStateNormal];
    self.btnSledeci.frame = CGRectMake(self.view.frame.size.width/2 - sirinaLabele/2, self.view.frame.size.height - 60, sirinaLabele, 40);
    //[self.btnSledeci setBackgroundColor:[UIColor greenColor]];
    self.btnSledeci.backgroundColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    [self.view addSubview:self.btnSledeci];
    
}
-(void) menjajCitat{
    self.view.backgroundColor =[UIColor blackColor]; //znaci ja mogu da postavim kojku hocu akciju u kontroleru na klik dugmeta
    self.textViewCitat.backgroundColor = [UIColor orangeColor];
    
    self.textViewCitat.text = [self.citati returnRandomQuote];
    
}

- (void)AboutButtonPressed
{
    
    NSString *message = @"\n Naizmenicno prikazivanje citata. \n\n Stiskom na dugme sledeci prikazuje se naredni citat.\n";
    
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:@"O aplikaciji"
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
