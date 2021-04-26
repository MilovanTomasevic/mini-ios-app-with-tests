//
//  BaseViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 24/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.rightButton = [[UIBarButtonItem alloc] initWithTitle:@"About"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   //action:@selector(AboutButtonPressed)];
                                                                   action:@selector(AboutButtonPressedWith:)];
    
    self.navigationItem.rightBarButtonItem = self.rightButton;
}

- (void)AboutButtonPressedWith:(NSString*)message
{
    
    //NSString *message = @"aaaaaaaaaaaaaaa";
    
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:@"Pravilo za semafor"
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
