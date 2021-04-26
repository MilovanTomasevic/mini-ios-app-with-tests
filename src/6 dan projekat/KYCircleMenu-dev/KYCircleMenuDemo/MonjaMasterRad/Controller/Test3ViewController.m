//
//  Test3ViewController.m
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "Test3ViewController.h"

@interface Test3ViewController ()

@end

@implementation Test3ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadPage];
}

- (IBAction)segmentSwitch:(UISegmentedControl *)sender {
    
    switch (self.segmentedControl.selectedSegmentIndex) {
        case 0:
            self.lblTipKazne.hidden = YES;
            self.kazneControl.hidden = YES;
            self.textFieldCena.text = @"160,oo dinara";
            break;
        case 1:
            self.lblTipKazne.hidden = NO;
            [self.view addSubview:self.kazneControl];
            self.kazneControl.hidden = NO;
            self.textFieldCena.text = @"15.000,oo dinara";
            break;
        default:
            break;
    }
}

- (IBAction)changeZone:(UISegmentedControl *)sender {
    
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        switch (self.zoneControl.selectedSegmentIndex) {
            case 0:
                self.textFieldCena.text = @"160,oo dinara";
                break;
            case 1:
                self.textFieldCena.text = @"99,oo dinara";
                break;
            default:
                break;
        }
    }else{
        if (self.kazneControl.selectedSegmentIndex == 0) {
            switch (self.zoneControl.selectedSegmentIndex) {
                case 0:
                    self.textFieldCena.text = @"15.000,oo dinara";
                    break;
                case 1:
                    self.textFieldCena.text = @"7.000,oo dinara";
                    break;
                default:
                    break;
            }
        }else{
            switch (self.zoneControl.selectedSegmentIndex) {
                case 0:
                    self.textFieldCena.text = @"12.000,oo dinara";
                    break;
                case 1:
                    self.textFieldCena.text = @"5.000,oo dinara";
                    break;
                default:
                    break;
            }
        }
    }
    
    
}

- (IBAction)changeKazne:(UISegmentedControl *)sender {
    
    if (self.zoneControl.selectedSegmentIndex==0) {
        switch (self.kazneControl.selectedSegmentIndex) {
            case 0:
                self.textFieldCena.text = @"15.000,oo dinara";
                break;
            case 1:
                self.textFieldCena.text = @"7.000,oo dinara";
                break;
            default:
                break;
        }
    }else{
        
        switch (self.kazneControl.selectedSegmentIndex) {
            case 0:
                self.textFieldCena.text = @"12.000,oo dinara";
                break;
            case 1:
                self.textFieldCena.text = @"5.000,oo dinara";
                break;
            default:
                break;
        }
    }
}



-(void)loadPage{
    
    CGFloat sirinaDugmeta = self.view.frame.size.width * 0.30;
    CGFloat sirinaPolja = self.view.frame.size.width * 0.5;
    CGFloat sirinaSegmenta = self.view.frame.size.width * 0.65;
    int visina = 70;
    int margina = 10;
    int visinaPolja = 40;
    
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-mm-yyyy HH:mm:ss"];
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"About"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(AboutButtonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    
    NSArray *itemArray = [NSArray arrayWithObjects: NSLocalizedString(@"Tiket", nil), NSLocalizedString(@"Kazna", nil),nil];
    
    
    self.segmentedControl = [[UISegmentedControl alloc] initWithItems:itemArray];
    self.segmentedControl.frame = CGRectMake(self.view.frame.size.width/2 - sirinaSegmenta/2, CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaSegmenta, 33);
    self.segmentedControl.backgroundColor = [UIColor whiteColor];
    self.segmentedControl.tintColor = [UIColor orangeColor];
    self.segmentedControl.selectedSegmentIndex = 0;
    self.segmentedControl.layer.cornerRadius = 15.0;
    self.segmentedControl.layer.borderColor = [UIColor orangeColor].CGColor;
    self.segmentedControl.layer.borderWidth = 1.0f;
    self.segmentedControl.layer.masksToBounds = YES;
    [self.segmentedControl addTarget:self
                              action:@selector(segmentSwitch:)
                    forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.segmentedControl];
    
    self.lblDatum = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.segmentedControl.frame)+margina, sirinaDugmeta, visinaPolja)];
    
    [self customizeLabel:self.lblDatum andText:@"Dana: "];
    
    self.textFieldDatum = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblDatum.frame), CGRectGetMaxY(self.segmentedControl.frame)+margina, sirinaPolja, visinaPolja)];
    
    [self customizeField:self.textFieldDatum andPlaceholder:@"nema potrebe"];
    self.textFieldDatum.text = [dateFormatter stringFromDate:[NSDate date]];
    self.textFieldDatum.enabled = NO;
    
    self.lblZona = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblDatum.frame)+margina, sirinaDugmeta, visinaPolja)];
    
    [self customizeLabel:self.lblZona andText:@"Zona: "];
    
    NSArray *itemArray2 = [NSArray arrayWithObjects: NSLocalizedString(@"Zona A", nil), NSLocalizedString(@"Zona B", nil),nil];
    
    self.zoneControl = [[UISegmentedControl alloc] initWithItems:itemArray2];
    self.zoneControl.frame = CGRectMake(CGRectGetMaxX(self.lblZona.frame), CGRectGetMaxY(self.lblDatum.frame)+margina, sirinaPolja, visinaPolja);
    self.zoneControl.backgroundColor = [UIColor whiteColor];
    self.zoneControl.tintColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    self.zoneControl.selectedSegmentIndex = 0;
    self.zoneControl.layer.cornerRadius = 15.0;
    self.zoneControl.layer.borderColor = [UIColor blueColor].CGColor;
    self.zoneControl.layer.borderWidth = 1.0f;
    self.zoneControl.layer.masksToBounds = YES;
    [self.zoneControl addTarget:self
                         action:@selector(changeZone:)
               forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.zoneControl];
    
    
    self.lblCena = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblZona.frame)+margina, sirinaDugmeta, visinaPolja)];
    
    [self customizeLabel:self.lblCena andText:@"Cena: "];
    
    self.textFieldCena = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblCena.frame), CGRectGetMaxY(self.lblZona.frame)+margina, sirinaPolja, visinaPolja)];
    
    [self customizeField:self.textFieldCena andPlaceholder:@"ne treba"];
    self.textFieldCena.text = @"160,oo dinara";
    self.textFieldCena.enabled = NO;
    
    
    self.lblRegistracija = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblCena.frame)+margina, sirinaDugmeta, visinaPolja)];
    
    [self customizeLabel:self.lblRegistracija andText:@"Registracija: "];
    
    self.textFieldRegistracija = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblRegistracija.frame), CGRectGetMaxY(self.lblCena.frame)+margina, sirinaPolja, visinaPolja)];
    
    [self customizeField:self.textFieldRegistracija andPlaceholder:@"Unesite tablice"];
    //self.textFieldCena.enabled = NO;
    
    
    self.lblTipKazne = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblRegistracija.frame)+margina, sirinaDugmeta, visinaPolja)];
    
    [self customizeLabel:self.lblTipKazne andText:@"Tip kazne: "];
    
    NSArray *itemArray3 = [NSArray arrayWithObjects: NSLocalizedString(@"♿️", nil), NSLocalizedString(@"🕓", nil),nil];
    
    self.kazneControl = [[UISegmentedControl alloc] initWithItems:itemArray3];
    self.kazneControl.frame = CGRectMake(CGRectGetMaxX(self.lblTipKazne.frame), CGRectGetMaxY(self.lblRegistracija.frame)+margina, sirinaPolja, visinaPolja);
    self.kazneControl.backgroundColor = [UIColor whiteColor];
    self.kazneControl.tintColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    self.kazneControl.selectedSegmentIndex = 0;
    self.kazneControl.layer.cornerRadius = 15.0;
    self.kazneControl.layer.borderColor = [UIColor blueColor].CGColor;
    self.kazneControl.layer.borderWidth = 1.0f;
    self.kazneControl.layer.masksToBounds = YES;
    [self.kazneControl addTarget:self
                          action:@selector(changeKazne:)
                forControlEvents:UIControlEventValueChanged];
    //[self.view addSubview:self.kazneControl];
    
    
    
    self.btnPrikaz = [[UIButton alloc] init];
    
    [self.btnPrikaz addTarget:self
                       action:@selector(GotovoButtonPressed)
             forControlEvents:UIControlEventTouchUpInside];
    
    [self.btnPrikaz setTitle:@"Gotovo" forState:UIControlStateNormal];
    self.btnPrikaz.layer.cornerRadius = 10; // this value vary as per your desire
    self.btnPrikaz.clipsToBounds = YES;
    self.btnPrikaz.frame = CGRectMake(self.view.frame.size.width/2 - sirinaDugmeta/2, self.view.frame.size.height - 60, sirinaDugmeta, 40);
    [self.btnPrikaz setBackgroundColor:[UIColor blueColor]];
    //self.btnPrikaz.backgroundColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    [self.view addSubview:self.btnPrikaz];
    
    self.lblTipKazne.hidden = YES;
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

- (void)GotovoButtonPressed
{
    NSString *message,*title;
    NSString *titleSegment = [self.zoneControl titleForSegmentAtIndex:self.zoneControl.selectedSegmentIndex];
    
    if ([self.textFieldRegistracija.text isEqualToString:@""]) {
        title = @"Greska";
        message =@"Molimo Vas unesite prvo registracione tablice.";
    }else{
        
        if (self.segmentedControl.selectedSegmentIndex==0) {
            
            title = @"Izdaje se opomena";
            message = [NSString stringWithFormat:NSLocalizedString(@"Dana %@ u zoni %@ izdaje se opomena za placanje parking mesta po ceni od %@ za vozilo registracije %@",nil), self.textFieldDatum.text, titleSegment, self.textFieldCena.text, self.textFieldRegistracija.text];
            
        }else {
            
            NSString *tipKazne;
            if (self.kazneControl.selectedSegmentIndex==0) {
                tipKazne = @"stajanja na mestu predvodjenog za vozace sa invaliditetom.";
            }else{
                tipKazne = @"prekoracenja vremena.";
            }
            
            title = @"Izdaje se kazna";
            message = [NSString stringWithFormat:NSLocalizedString(@"Dana %@ u zoni %@ odredjuje se kazna za nepropisno parkiranje u iznosu od %@ za vozilo registracije %@ zbog %@",nil), self.textFieldDatum.text, titleSegment, self.textFieldCena.text, self.textFieldRegistracija.text, tipKazne];
        }
    }
    
    
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
    if (self.segmentedControl.selectedSegmentIndex==0) {
        
        title = @"\n tiket naslov.\n";
        message = @"\n tiket opis.\n";
        
    }else {
        title = @"\n Kazne naslov.\n";
        message = @"\n tiket opis.\n";
    }
    
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
