//
//  MasterViewController.h
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstPageViewController.h"
#import "SecondPageViewController.h"
#import "ThirdPageViewController.h"

@interface MasterViewController : UIViewController<UITextFieldDelegate>


@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;

- (void)nextButtonPressed;
-(void)customBackButtonPressed;

-(void) addAccountSaveDone;

-(void)customizeLabel:(UILabel*)label  andText:(NSString*)text;
-(void)customizeField:(UITextField*)field andPlaceholder:(NSString*)placeholder;
-(void)AlertInfoWithTitle:(NSString*)title andMessage:(NSString*)message;
-(void)setNumericKeyboardWithDone:(UITextField*) textField withDoneSelector:(SEL)doneSelector withObject:(id)object;

@end
