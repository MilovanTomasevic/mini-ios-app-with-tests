//
//  FirstPageViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "FirstPageViewController.h"
#import "MasterViewController.h"

@interface FirstPageViewController (){
    MasterViewController *masterVC;
}

@end

@implementation FirstPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    masterVC = (MasterViewController*)self.parentViewController;
    
    CGFloat sirinaDugmeta = self.view.frame.size.width * 0.30;
    CGFloat sirinaPolja = self.view.frame.size.width * 0.5;
    
    int visina = 55;
    int margina = 10;
    int visinaPolja = 40;

    self.lblEmail = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblEmail andText:@"Email: "];
    [self.view addSubview:self.lblEmail];
    
    self.textFieldEmail = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblEmail.frame), CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.textFieldEmail andPlaceholder:@"Mejl adresa"];
    [self.view addSubview:self.textFieldEmail];
    
    self.lblSifra = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblEmail.frame)+margina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblSifra andText:@"Lozinka: "];
    [self.view addSubview:self.lblSifra];
    
    self.textFieldSifra = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblSifra.frame), CGRectGetMaxY(self.lblEmail.frame)+margina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.textFieldSifra andPlaceholder:@"Sifra korisnika"];
    [self.view addSubview:self.textFieldSifra];
    
    
    self.lblSifraPonovo = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblSifra.frame)+margina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblSifraPonovo andText:@"Ponovite sifru: "];
    [self.view addSubview:self.lblSifraPonovo];
    
    
    self.textFieldSifraPonovo = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblEmail.frame), CGRectGetMaxY(self.lblSifra.frame)+margina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.textFieldSifraPonovo andPlaceholder:@"Ponovljena sifra"];
    [self.view addSubview:self.textFieldSifraPonovo];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.pControl setCurrentPage:0];
    [self loadLeftRightButton];
}


- (void)loadLeftRightButton{
    
    masterVC.navigationItem.leftBarButtonItem= [[UIBarButtonItem alloc] initWithTitle:@"<"
                                                                                style:UIBarButtonItemStylePlain
                                                                               target:self
                                                                               action:@selector(customBackButtonPressed)];
    
    masterVC.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@">"
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
    NSLog(@"Next button clicked 1 Page view");
    
    NSString *eMail = self.textFieldEmail.text;
    NSString *password = self.textFieldSifra.text;
    NSString *rPassword = self.textFieldSifraPonovo.text;
    //eMail = [eMail stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    password = [password stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    rPassword = [rPassword stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    
    NSString *message,*title;
    title = @"Greska!";
    
    if (![self validateEmail:eMail]) {
        message = @"Uneti mail nije validan";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    
    if ([password isEqualToString:@""]){
        message = @"Molimo Vas unesite prvo lozinku";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if([rPassword isEqualToString:@""]){
        message = @"Molimo Vas ponovite prvo lozinku";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    
    if (![password isEqualToString:rPassword]) {
        message = @"Lozinke moraju biti jednake, pokusajte ponovo!";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }

    [masterVC nextButtonPressed];
}

-(void)swipeleft:(UISwipeGestureRecognizer*)gestureRecognizer
{
    [self nextPage];
}

-(void)swiperight:(UISwipeGestureRecognizer*)gestureRecognizer
{
    [self customBackButtonPressed];
}

-(BOOL)validateEmail:(NSString *)candidate{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:candidate];
}





@end
