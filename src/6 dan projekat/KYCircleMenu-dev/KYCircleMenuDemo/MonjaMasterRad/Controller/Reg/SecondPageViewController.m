//
//  SecondPageViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "SecondPageViewController.h"
#import "MasterViewController.h"

@interface SecondPageViewController (){
    MasterViewController *masterVC;
}

@end

@implementation SecondPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    masterVC = (MasterViewController*)self.parentViewController;
    
    
    CGFloat sirinaDugmeta = self.view.frame.size.width * 0.30;
    CGFloat sirinaPolja = self.view.frame.size.width * 0.5;
    
    int visina = 55;
    int margina = 10;
    int visinaPolja = 40;
    
    self.lblIme = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblIme andText:@"Vase ime: "];
    [self.view addSubview:self.lblIme];
    
    self.imeField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblIme.frame), CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.imeField andPlaceholder:@"Licno ime"];
    [self.view addSubview:self.imeField];
    
    self.lblPrezime = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.imeField.frame)+margina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblPrezime andText:@"Prezime: "];
    [self.view addSubview:self.lblPrezime];
    
    self.prezimeField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblPrezime.frame), CGRectGetMaxY(self.lblIme.frame)+margina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.prezimeField andPlaceholder:@"Vase prezime"];
    [self.view addSubview:self.prezimeField];
    
    
    self.lblAdresa = [[UILabel alloc]initWithFrame: CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblPrezime.frame)+margina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblAdresa andText:@"Adresa: "];
    [self.view addSubview:self.lblAdresa];
    
    
    self.adresaField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblAdresa.frame), CGRectGetMaxY(self.prezimeField.frame)+margina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.adresaField andPlaceholder:@"Vasa adresa"];
    [self.view addSubview:self.adresaField];
    

    self.lblGrad = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.lblAdresa.frame)+margina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblGrad andText:@"Grad: "];
    [self.view addSubview:self.lblGrad];
   
    self.gradField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblGrad.frame), CGRectGetMaxY(self.adresaField.frame)+margina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.gradField andPlaceholder:@"Vas grad"];
    [self.view addSubview:self.gradField];
    
    self.lblPKod = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/4 - sirinaDugmeta/2, CGRectGetMaxY(self.gradField.frame)+margina, sirinaDugmeta, visinaPolja)];
    [masterVC customizeLabel:self.lblPKod andText:@"PT broj:"];
    [self.view addSubview:self.lblPKod];
    
    self.pKodField = [[UITextField alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.lblPKod.frame), CGRectGetMaxY(self.gradField.frame)+margina, sirinaPolja, visinaPolja)];
    [masterVC customizeField:self.pKodField andPlaceholder:@"Postanski kod"];
    [self.view addSubview:self.pKodField];
    
    [masterVC setNumericKeyboardWithDone:self.pKodField withDoneSelector:@selector(doneClicked:) withObject:self];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.pControl setCurrentPage:1];
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
    NSLog(@"Next button clicked 2 Page view");
    //next page
    
    self.imeField.text = [self.imeField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    self.prezimeField.text = [self.prezimeField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    self.adresaField.text = [self.adresaField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    self.gradField.text = [self.gradField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    self.pKodField.text = [self.pKodField.text stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    
    NSString *message,*title;
    title = @"Greska!";
    
    if ([self.imeField.text isEqualToString:@""]){
        message = @"Molimo Vas unesite prvo Vase ime";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if([self.prezimeField.text isEqualToString:@""]){
        message = @"Molimo Vas unesite prvo Vase prezime";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if ([self.adresaField.text isEqualToString:@""]) {
        message = @"Molimo Vas unesite prvo Vasu adresu";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if ([self.gradField.text isEqualToString:@""]) {
        message = @"Molimo Vas unesite prvo Vas grad";
        [masterVC AlertInfoWithTitle:title andMessage:message];
        return;
    }
    if ([self.pKodField.text isEqualToString:@""]) {
        message = @"Molimo Vas unesite prvo Vas postanski kod";
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

- (IBAction)doneClicked:(id)sender
{
    [self.view endEditing:YES];
}








@end
