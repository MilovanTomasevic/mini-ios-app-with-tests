//
//  CircleMenuViewController.m
//  KYCircleMenuDemo
//
//  Created by Kjuly on 7/18/12.
//  Copyright (c) 2012 Kjuly. All rights reserved.
//

#import "CircleMenuViewController.h"
#import "Test1ViewController.h"
#import "Test2ViewController.h"
#import "Test3ViewController.h"
#import "Test4ViewController.h"
#import "Test5ViewController.h"
#import "Test6ViewController.h"

@implementation CircleMenuViewController


- (id)init
{
  if (self = [super init]) {
    [self setTitle:@"Master rad"];
    
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithTitle:@"Info"
                                                                  style:UIBarButtonItemStyleDone
                                                                 target:self
                                                                 action:@selector(aboutApp:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    
//    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
//    self.navigationController.navigationBar.tintColor = [UIColor orangeColor];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor orangeColor]}];
//    self.navigationController.navigationBar.translucent = YES;
    
    
    
  for (UIButton * button in [self.menu subviews]) {
    [button setAlpha:.95f];
  }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    
    
    self.title = NSLocalizedString(@"MASTER RAD", nil);
}
#pragma mark - KYCircleMenu Button Action

// Run button action depend on their tags:
//
// TAG:        1       1   2      1   2     1   2     1 2 3     1 2 3
//            \|/       \|/        \|/       \|/       \|/       \|/
// COUNT: 1) --|--  2) --|--   3) --|--  4) --|--  5) --|--  6) --|--
//            /|\       /|\        /|\       /|\       /|\       /|\
// TAG:                             3       3   4     4   5     4 5 6
//
- (void)runButtonActions:(id)sender
{
  [super runButtonActions:sender];
  
  // Configure new view & push it with custom |pushViewController:| method
//  UIViewController * viewController = [[UIViewController alloc] init];
//  [viewController.view setBackgroundColor:[UIColor blackColor]];
//    [viewController setTitle:[NSString stringWithFormat:@"View %ld", (long)[sender tag]]];
//  // Use KYCircleMenu's |-pushViewController:| to push vc
//  [self pushViewController:viewController];
    

        
        if ((long)[sender tag] == 1){
            Test1ViewController *test1CV = [[Test1ViewController alloc]init];
            [test1CV setTitle:@"App 1"];
            [test1CV.view setBackgroundColor:[UIColor whiteColor]];
            [self pushViewController:test1CV];
        }
        if ((long)[sender tag] == 2){
            Test2ViewController *test2CV = [[Test2ViewController alloc]init];
            [test2CV setTitle:@"App 2"];
            [test2CV.view setBackgroundColor:[UIColor whiteColor]];
            [self pushViewController:test2CV];
        }
        if ((long)[sender tag] == 3){
            Test3ViewController *test3CV = [[Test3ViewController alloc]init];
            [test3CV setTitle:@"Test 3"];
            [test3CV.view setBackgroundColor:[UIColor whiteColor]];
            [self.navigationController pushViewController:test3CV animated:YES];
        }
        if ((long)[sender tag] == 4){
            Test4ViewController *test4CV = [[Test4ViewController alloc]init];
            [test4CV setTitle:@"App 4"];
            [test4CV.view setBackgroundColor:[UIColor whiteColor]];
            [self.navigationController pushViewController:test4CV animated:YES];
        }
        if ((long)[sender tag] == 5){
            Test5ViewController *test5CV = [[Test5ViewController alloc]init];
            [test5CV setTitle:@"App 5"];
            [test5CV.view setBackgroundColor:[UIColor whiteColor]];
            [self.navigationController pushViewController:test5CV animated:YES];
        }
        if ((long)[sender tag] == 6){
            Test6ViewController *test6CV = [[Test6ViewController alloc]init];
            [test6CV setTitle:@"Test 6"];
            [test6CV.view setBackgroundColor:[UIColor whiteColor]];
            [self.navigationController pushViewController:test6CV animated:YES];
        }
    
    
    
}

- (IBAction)aboutApp:(id)sender
{
    NSString *message = @"\n Fakultet:\nFakultet tehničkih nauka\n\nUniverzitet:\nUniverzitet u Novom Sadu\n\n Tema:\nRazvoj i testiranje iOS aplikacije\n\nKandidat:\nMonja Tadić\n\n Mentor:\nBranko Milosavljević\n\nGodina:\n2018\n\n";
    
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:@"Informacije"
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
