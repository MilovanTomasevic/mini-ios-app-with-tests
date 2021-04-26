//
//  Test4ViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "Test4ViewController.h"

@interface Test4ViewController (){
    NSString  *userName, *password;
}

@end

@implementation Test4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    userName = @"admin";
    password = @"admin";
    
    CGFloat sirinaDugmeta = self.view.frame.size.width * 0.30;
    CGFloat sirinaPolja = self.view.frame.size.width * 0.5;

    int visina = 70;
    int margina = 10;
    int visinaPolja = 40;
    
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"About"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(AboutButtonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    self.lblKorisnickoIme = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.navigationController.navigationBar.frame)+2*visina, sirinaDugmeta, visinaPolja)];
    
    [self customizeLabel:self.lblKorisnickoIme andText:@"Korisnik: "];
    
    self.textFieldKorisnickoIme = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblKorisnickoIme.frame), CGRectGetMaxY(self.navigationController.navigationBar.frame)+2*visina, sirinaPolja, visinaPolja)];
    
    [self customizeField:self.textFieldKorisnickoIme andPlaceholder:@"Korisnicko ime"];
    
    
    
    self.lblSifra = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblKorisnickoIme.frame)+margina, sirinaDugmeta, visinaPolja)];
    
    [self customizeLabel:self.lblSifra andText:@"Lozinka: "];
    
    self.textFieldSifra = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblSifra.frame), CGRectGetMaxY(self.lblKorisnickoIme.frame)+margina, sirinaPolja, visinaPolja)];
    
    [self customizeField:self.textFieldSifra andPlaceholder:@"Sifra korisnika"];
    //self.textFieldCena.enabled = NO;
    
    self.btnLogujSe = [[UIButton alloc] init];
    
    [self.btnLogujSe addTarget:self
                       action:@selector(loginButtonClicked)
             forControlEvents:UIControlEventTouchUpInside];
    
    [self.btnLogujSe setTitle:@"Logovanje" forState:UIControlStateNormal];
    self.btnLogujSe.layer.cornerRadius = 10; // this value vary as per your desire
    self.btnLogujSe.clipsToBounds = YES;
    self.btnLogujSe.frame = CGRectMake(self.view.frame.size.width/2 - sirinaDugmeta/2, CGRectGetMaxY(self.lblSifra.frame)+4*margina, sirinaDugmeta, 40);
    [self.btnLogujSe setBackgroundColor:[UIColor blueColor]];
    //self.btnPrikaz.backgroundColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    [self.view addSubview:self.btnLogujSe];
    
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
    [self.view addSubview:field];
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
    [self.view addSubview:label];
}

-(void)textFieldDidChange:(UITextField *)theTextField{
    NSLog( @"backgroundColor changed: %@", theTextField.text);
    
    if (theTextField.text.length < 1){
        theTextField.backgroundColor = [UIColor whiteColor];
    }
    else{
        theTextField.backgroundColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    }
}



-(void)loginButtonClicked
{
    NSLog(@"Login button clicked");
    
    userName = self.textFieldKorisnickoIme.text;
    password = self.textFieldSifra.text;
    userName = [userName stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    password = [password stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    
    NSString *message,*title;
    title = @"Greska!";
    
    if ([userName isEqualToString:@""]) {
        message = @"Molimo Vas, prvo unesite korisnicko ime.";
        [self AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if ([password isEqualToString:@""]) {
        message = @"Molimo Vas, prvo unesite lozinku.";
        [self AlertInfoWithTitle:title andMessage:message];
        return;
    }
    
    if(([userName isEqualToString:@"admin"] && [password isEqualToString:@"admin"])){
        
        title = @"Uspesno logovanje";
        message = @"Dobrodosli admin";
        [self AlertInfoWithTitle:title andMessage:message];
    }else{
         message = @"Neispravni podaci.";
        [self AlertInfoWithTitle:title andMessage:message];
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



- (void)AboutButtonPressed
{
    
    NSString *message,*title;
    
        
        title = @"\n log naslov.\n";
        message = @"\n log opis.\n";
    
    
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

-(BOOL) textFieldShouldReturn:(UITextField *)textField{   //ovo radi zbog delegata, ukljucen vidi gore self.delegate
    
    [textField resignFirstResponder];
    return YES;
}

@end



