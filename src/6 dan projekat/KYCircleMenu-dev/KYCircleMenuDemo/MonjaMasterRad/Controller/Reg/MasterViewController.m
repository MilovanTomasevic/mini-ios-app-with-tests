//
//  MasterViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController{
    int currentPage;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    currentPage = 0;
    
    [self loadScrollView];
    
    [self addChildViewController:[[FirstPageViewController alloc]init]];
    [self addChildViewController:[[SecondPageViewController alloc]init]];
    [self addChildViewController:[[ThirdPageViewController alloc]init]];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.view addSubview:[self.childViewControllers objectAtIndex:currentPage].view];
}

-(void)customBackButtonPressed{
    
    [self.view endEditing:YES];
    int page = currentPage;
    
    if (page == 0){
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [[self.childViewControllers objectAtIndex:page].view removeFromSuperview];
        [self.view addSubview:[self.childViewControllers objectAtIndex:page-1].view];
        currentPage = page-1;
    }
}

- (void)nextButtonPressed {
    int page = currentPage;
    
    CGRect frame = _scrollView.frame;
    frame.origin.x = frame.size.width * (page+1);
    frame.origin.y = 0;
    
    [_scrollView scrollRectToVisible:frame animated:YES];
    
    [[self.childViewControllers objectAtIndex:page].view removeFromSuperview];
    [self.view addSubview:[self.childViewControllers objectAtIndex:page+1].view];
    currentPage = page+1;
}

- (void)addAccountSaveDone
{
    
//    [self.coreDataManager addOrUpdateUserEmail:self.user.mail sifra:self.user.sifra ime:self.user.ime prezime:self.user.prezime adresa:self.user.adresa grad:self.user.grad postanskiKod:self.user.postanskiKod telefon:self.user.telefon sigurnosnoPitanje:self.user.sPitanje sigurnosniOdgovor:self.user.sOdgovor];
//
//    [appDelegate saveContext];
//    [MTSupport progressDone:@"Nalog kreiran" andView:self.navigationController.view];
}

- (void)loadScrollView{
    CGRect frame = CGRectMake( 0, 0, self.view.frame.size.width, self.view.frame.size.height-1);
    self.scrollView= [[UIScrollView alloc] initWithFrame:frame];
    _scrollView.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    //[_scrollView setBackgroundColor: [THEME_MANAGER getBackgroundColor]];
    [_scrollView setUserInteractionEnabled:YES];
    [_scrollView setScrollEnabled:YES];
    _scrollView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
    
    [self.view addSubview:_scrollView];
}


-(void)customizeField:(UITextField*)field andPlaceholder:(NSString*)placeholder{
    
    field.borderStyle = UITextBorderStyleRoundedRect;
    field.font = [UIFont systemFontOfSize:14];
    field.placeholder = placeholder;
    field.attributedPlaceholder = [[NSAttributedString alloc] initWithString:placeholder attributes:@{NSForegroundColorAttributeName: [UIColor lightGrayColor]}];
    field.autocorrectionType = UITextAutocorrectionTypeNo;
    field.keyboardType = UIKeyboardTypeDefault;
    field.returnKeyType = UIReturnKeyDone;
    field.clearButtonMode = UITextFieldViewModeWhileEditing;
    field.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    field.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
    [field addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    
    field.delegate = self;
    //[self.view addSubview:field];
}


-(void)customizeLabel:(UILabel*)label  andText:(NSString*)text{
    label.text = text;
    label.numberOfLines = 1;
    label.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
    label.adjustsFontSizeToFitWidth = YES;
    label.minimumScaleFactor = 10.0f/12.0f;
    label.clipsToBounds = YES;
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentLeft;
    //[self.view addSubview:label];
}

-(void)textFieldDidChange:(UITextField *)theTextField{   // prebaci mozda u kontrolere
    NSLog( @"backgroundColor changed: %@", theTextField.text);
    
    if (theTextField.text.length < 1){
        theTextField.backgroundColor = [UIColor whiteColor];
    }
    else{
        theTextField.backgroundColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    }
}

-(void)AlertInfoWithTitle:(NSString*)title andMessage:(NSString*)message{
    
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:title
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

-(void)setNumericKeyboardWithDone:(UITextField*) textField withDoneSelector:(SEL)doneSelector withObject:(id)object
{
    textField.keyboardType = UIKeyboardTypeNumberPad;
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone){ //IPAD by default have done button
        UIToolbar *keyboardDoneButtonView = [[UIToolbar alloc] init];
        [keyboardDoneButtonView sizeToFit];
        
        
        UIBarButtonItem *flexibleSpace =[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                                     target:self
                                                                                     action:nil];
        
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Done", nil)
                                                                       style:UIBarButtonItemStyleDone
                                                                      target:object
                                                                      action:doneSelector ];
        [keyboardDoneButtonView setItems:[NSArray arrayWithObjects:flexibleSpace,doneButton, nil]];
        textField.inputAccessoryView = keyboardDoneButtonView;
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{   //ovo radi zbog delegata, ukljucen vidi gore self.delegate
    
    [textField resignFirstResponder];
    return YES;
}

@end
