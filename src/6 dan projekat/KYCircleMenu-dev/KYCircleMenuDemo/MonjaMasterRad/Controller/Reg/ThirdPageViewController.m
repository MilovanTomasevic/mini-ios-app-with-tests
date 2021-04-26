//
//  ThirdPageViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "ThirdPageViewController.h"
#import "MasterViewController.h"
#import "Test5ViewController.h"

@interface ThirdPageViewController (){
    MasterViewController *masterVC;
}

@end

@implementation ThirdPageViewController{
    UIAlertController *alert;
    NSArray *sPitanjaList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    masterVC = (MasterViewController*)self.parentViewController;
    
    alert = [[UIAlertController alloc] init];
    
    CGFloat sirinaDugmeta = self.view.frame.size.width * 0.30;
    CGFloat sirinaPolja = self.view.frame.size.width * 0.5;
    CGFloat sirinaSigurnost = self.view.frame.size.width * 0.9;
    
    int visina = 55;
    int margina = 10;
    int visinaPolja = 40;
    
    self.lblBrojKartice = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblBrojKartice andText:@"Broj kartice: "];
    [self.view addSubview:self.lblBrojKartice];
    
    self.brojKarticeField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblBrojKartice.frame), CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.brojKarticeField andPlaceholder:@"Unesite br kartice"];
    [self.view addSubview:self.brojKarticeField];
    
    self.lblTelefon = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.brojKarticeField.frame)+margina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblTelefon andText:@"Telefon: "];
    [self.view addSubview:self.lblTelefon];
    
    self.telefonField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblTelefon.frame), CGRectGetMaxY(self.brojKarticeField.frame)+margina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.telefonField andPlaceholder:@"Unesite telefon"];
    [self.view addSubview:self.telefonField];
    
    sPitanjaList = [NSArray arrayWithObjects: NSLocalizedString(@"Omiljeni grad", nil), NSLocalizedString(@"Ime prijatelja", nil), NSLocalizedString(@"Auto", nil), NSLocalizedString(@"Telefon", nil), NSLocalizedString(@"Knjiga", nil), NSLocalizedString(@"Broj", nil), NSLocalizedString(@"Horoskop", nil), nil];

    self.btnSelection = [[UIButton alloc] init];
    
    [self.btnSelection addTarget:self
                          action:@selector(onButtonFuncClicked:)
              forControlEvents:UIControlEventTouchUpInside];
    
    [self.btnSelection setTitle:@"Sigurnosno pitanje" forState:UIControlStateNormal];
    self.btnSelection.layer.cornerRadius = 10; // this value vary as per your desire
    self.btnSelection.clipsToBounds = YES;
    self.btnSelection.frame = CGRectMake(self.view.frame.size.width/2 - sirinaSigurnost/2, CGRectGetMaxY(self.telefonField.frame)+10 , sirinaSigurnost, visinaPolja);
    //[self.btnSelection setBackgroundColor:[UIColor blueColor]];
    self.btnSelection.backgroundColor = [UIColor colorWithRed:208/255.0 green:208/255.0 blue:208/255.0 alpha:1.0];
    [self.view addSubview:self.btnSelection];
    
    
    
   
    
    self.odgovorField = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - sirinaSigurnost/2, CGRectGetMaxY(self.btnSelection.frame)+10 , sirinaSigurnost, visinaPolja)];
    [masterVC customizeField:self.self.odgovorField andPlaceholder:@"Unesite odgovor"];
    [self.view addSubview:self.self.odgovorField];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.pControl setCurrentPage:2];
    [self loadLeftRightButton];
}


- (void)loadLeftRightButton{
    
    masterVC.navigationItem.leftBarButtonItem= [[UIBarButtonItem alloc] initWithTitle:@"<"
                                                                                style:UIBarButtonItemStylePlain
                                                                               target:self
                                                                               action:@selector(customBackButtonPressed)];
    
    
    masterVC.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:NSLocalizedString(@"Zavrsi",nil)
                                                                                 style:UIBarButtonItemStylePlain
                                                                                target:self
                                                                                action:@selector(nextPage)];
}

-(void)customBackButtonPressed
{
    [masterVC customBackButtonPressed];
}

-(void)nextPage
{
    NSLog(@"Next button clicked 3 Page view");
    

    
    self.brojKarticeField.text = [self.brojKarticeField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    self.telefonField.text = [self.telefonField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    self.odgovorField.text = [self.odgovorField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    
    NSString *message,*title;
    title = @"Greska!";
    
    if ([self.brojKarticeField.text isEqualToString:@""]){
        message = @"Molimo Vas unesite prvo validan broj kartice!";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if([self.telefonField.text isEqualToString:@""]){
        message = @"Molimo Vas unesite prvo telefonski broj!";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if([self.btnSelection.currentTitle isEqualToString:@"Sigurnosno pitanje"]){
        message = @"Molimo Vas da prvo izaberete sigurnosno pitanje!";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if ([self.odgovorField.text isEqualToString:@""]) {
        message = @"Molimo Vas unesite prvo odgovor na pitanje!";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
   
    title = @"GOTOVO!";
    message = @"Uspesna registracija !!!!";

    [masterVC AlertInfoWithTitle:title andMessage:message];
    
    [self performSelector:@selector(endGame) withObject:nil afterDelay:2.0 ];
    
    
    
}

-(void)endGame{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)onButtonFuncClicked:(UIButton *)sender{
    
    [self.view endEditing:YES];
    
    alert =[UIAlertController
            alertControllerWithTitle:NSLocalizedString(@"Izaberite pitanje", nil)
            message:nil
            preferredStyle:UIAlertControllerStyleActionSheet ];
    
    for (int i =0 ; i<sPitanjaList.count; i++)
    {
        NSString *titleString = sPitanjaList[i];
        UIAlertAction *action = [UIAlertAction actionWithTitle:titleString style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
            //[self onFunctionSelected:(int)i];
            [self.btnSelection setTitle:titleString forState:UIControlStateNormal];
            [self->alert dismissViewControllerAnimated:YES completion:nil];
            self->alert = nil;
        }];
        
        [alert addAction:action];
    }
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"cancel",nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction*  action){
        [self->alert dismissViewControllerAnimated:YES completion:nil];
        self->alert = nil;
    }];
    [alert addAction:cancel];
    [self presentViewController:alert animated:NO completion:nil];
}

- (void)onFunctionSelected:(int)index{
    self.btnSelection.titleLabel.text = (sPitanjaList[index]);
}


-(void)swipeleft:(UISwipeGestureRecognizer*)gestureRecognizer
{
    [self nextPage];
}

-(void)swiperight:(UISwipeGestureRecognizer*)gestureRecognizer
{
    [self customBackButtonPressed];
}



@end
