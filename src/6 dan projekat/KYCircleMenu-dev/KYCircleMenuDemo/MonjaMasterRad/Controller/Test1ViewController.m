//
//  Test1ViewController.m
//  KYCircleMenuDemo
//
//  Created by Monja Tadic on 22/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "Test1ViewController.h"

@interface Test1ViewController (){
    NSTimer *countdownTimer, *countdownTimer2;
    BOOL blinkStatus;
}

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.counter = 17;
    blinkStatus = NO;
    
    self.semafor = [[Semafor alloc]init];
    [self load];
    
    [self zapocniBrojanje];
}


-(void)zapocniBrojanje{
    countdownTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                                      target:self
                                                    selector:@selector(brojac)
                                                    userInfo:nil
                                                     repeats:YES];
}

-(void)brojac{
    
    if (self.counter > 10 && self.counter <= 17 ) {
        self.rView.backgroundColor = [UIColor redColor];
        self.yView.backgroundColor = [UIColor whiteColor];
        self.gView.backgroundColor = [UIColor whiteColor];
        self.counter -= 1;
    }
    if (self.counter > 6 && self.counter <= 10 ) {
        self.counter -= 1;
        self.yView.backgroundColor = [UIColor yellowColor];
    }
    if(self.counter <= 7){
        self.counter -= 1;
        self.rView.backgroundColor = [UIColor whiteColor];
        self.yView.backgroundColor = [UIColor whiteColor];
        self.gView.backgroundColor = [UIColor greenColor];
    }
    if (self.counter == 0){
        self.gView.backgroundColor = [UIColor greenColor];
        [countdownTimer invalidate];
        self.counter = 17;
        [self zapocniBrojanje];
    }
}



- (void)okButtonTapped:(UIButton *)sender {
    NSLog(@"Ok button was tapped: dismiss the view controller.");
}

-(void)load {

    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"About"
                                                                    style:UIBarButtonItemStyleDone
                                                                   target:self
                                                                   action:@selector(AboutButtonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    
    CGFloat sirinaPolja = self.view.frame.size.width * 0.3;
    CGFloat sirinaDugmeta = self.view.frame.size.width * 0.2;
    CGFloat sirinaLabele = self.view.frame.size.width * 0.8;
    int margina = 5;
    int visina = 70;
    

    self.rView = [[UIView alloc] init];
    self.yView = [[UIView alloc] init];
    self.gView = [[UIView alloc] init];
    
    self.rView.frame =CGRectMake(self.view.frame.size.width/2 - sirinaPolja/2, CGRectGetMaxY(self.navigationController.navigationBar.frame)+visina, sirinaPolja, sirinaPolja);
    self.rView.layer.cornerRadius = self.rView.bounds.size.width/2;
    //self.rView.backgroundColor = [UIColor redColor];
    self.rView.layer.borderColor = [UIColor blackColor].CGColor;
    self.rView.layer.borderWidth = 3.0f;
    [self.view addSubview:self.rView];

    self.yView.frame =CGRectMake(self.view.frame.size.width/2 - sirinaPolja/2, CGRectGetMaxY(self.rView.frame)+margina, sirinaPolja, sirinaPolja);
    self.yView.layer.cornerRadius = self.yView.bounds.size.width/2;
    //self.yView.backgroundColor = [UIColor yellowColor];
    self.yView.layer.borderColor = [UIColor blackColor].CGColor;
    self.yView.layer.borderWidth = 3.0f;
    [self.view addSubview:self.yView];

    self.gView.frame =CGRectMake(self.view.frame.size.width/2 - sirinaPolja/2, CGRectGetMaxY(self.yView.frame)+margina, sirinaPolja, sirinaPolja);
    self.gView.layer.cornerRadius = self.gView.bounds.size.width/2;
    //self.gView.backgroundColor = [UIColor greenColor];
    self.gView.layer.borderColor = [UIColor blackColor].CGColor;
    self.gView.layer.borderWidth = 3.0f;
    [self.view addSubview:self.gView];
    
    
    self.ukljuciSemafor = [[UIButton alloc] init];
    self.iskljuciSemafor = [[UIButton alloc] init];
    self.pokvariSemafor = [[UIButton alloc] init];
    self.popraviSemafor = [[UIButton alloc] init];
    
    [self.ukljuciSemafor addTarget:self
                            action:@selector(ukljuci)
                  forControlEvents:UIControlEventTouchUpInside];
    
    [self.ukljuciSemafor setTitle:@"▶️" forState:UIControlStateNormal];
    self.ukljuciSemafor.frame = CGRectMake(self.view.frame.size.width/3 - sirinaPolja/2, CGRectGetMaxY(self.gView.frame)+3*margina, sirinaDugmeta, sirinaDugmeta);
    [self.view addSubview:self.ukljuciSemafor];

//    [self.iskljuciSemafor addTarget:self
//                            action:@selector(zaustavi)
//                  forControlEvents:UIControlEventTouchUpInside];
//
//    [self.iskljuciSemafor setTitle:@"⏹" forState:UIControlStateNormal];
//    self.iskljuciSemafor.frame = CGRectMake(CGRectGetMaxX(self.ukljuciSemafor.frame), CGRectGetMaxY(self.gView.frame)+3*margina, sirinaDugmeta, sirinaDugmeta);
////    [self.view addSubview:self.iskljuciSemafor];
    
    [self.pokvariSemafor addTarget:self
                            action:@selector(pokvari)
                  forControlEvents:UIControlEventTouchUpInside];
    
    [self.pokvariSemafor setTitle:@"⤵️" forState:UIControlStateNormal];
    self.pokvariSemafor.frame = CGRectMake(CGRectGetMaxX(self.ukljuciSemafor.frame), CGRectGetMaxY(self.gView.frame)+3*margina, sirinaDugmeta, sirinaDugmeta);
    [self.view addSubview:self.pokvariSemafor];
    
    [self.popraviSemafor addTarget:self
                            action:@selector(popravi)
                  forControlEvents:UIControlEventTouchUpInside];
    
    [self.popraviSemafor setTitle:@"⤴️" forState:UIControlStateNormal];
    self.popraviSemafor.frame = CGRectMake(CGRectGetMaxX(self.pokvariSemafor.frame), CGRectGetMaxY(self.gView.frame)+3*margina, sirinaDugmeta, sirinaDugmeta);
    [self.view addSubview:self.popraviSemafor];
    
    self.lblStanjeSemafora = [[UILabel alloc]init];
    self.lblStanjeSemafora.frame = CGRectMake(self.view.frame.size.width/2 - sirinaLabele/2, CGRectGetMaxY(self.popraviSemafor.frame)+6*margina, sirinaLabele, visina/2);
    self.lblStanjeSemafora.text = @"Semafor radi.";
    [self.lblStanjeSemafora setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:self.lblStanjeSemafora];


}

- (void) buttonPressed:(UIButton*) sender {
    NSLog(@"The button title is %@",sender.titleLabel.text);
}


-(void)ukljuci{
    
    if (self.semafor.stanjeSemafora != sOUT) {
        self.semafor.stanjeSemafora = sON;
        self.counter = 17;
        [self zapocniBrojanje];
        self.lblStanjeSemafora.text = @"Semafor radi.";
    }else{
        self.lblStanjeSemafora.text = @"Ne mozete ukljuciti! Pokvaren je.";
        
    }

}

- (void)advanceTimer:(NSTimer *)timer
{
    [self setCounter:(self.counter -1)];
    if (self.counter <= 0) { [timer invalidate]; }
}

//-(void)zaustavi{
//
//    self.semafor.stanjeSemafora = sOFF;
//
//    [countdownTimer2 invalidate];
//    countdownTimer2 = nil;
//    [countdownTimer invalidate];
//    countdownTimer = nil;
//}

-(void)pokvari{
    
    self.semafor.stanjeSemafora = sOUT;
    self.lblStanjeSemafora.text = @"Semafor pokvaren.";
    
    [countdownTimer invalidate];
    countdownTimer = nil;
    
    _rView.backgroundColor = [UIColor whiteColor];
    _gView.backgroundColor = [UIColor whiteColor];

    countdownTimer2 = [NSTimer
                      scheduledTimerWithTimeInterval:(NSTimeInterval)(1.0)
                      target:self
                      selector:@selector(blink)
                      userInfo:nil
                      repeats:TRUE];
    blinkStatus = NO;
}

-(void)blink{
    
    _rView.backgroundColor = [UIColor whiteColor];
    _gView.backgroundColor = [UIColor whiteColor];
    
    if(blinkStatus == NO){
        _yView.backgroundColor = [UIColor whiteColor];
        blinkStatus = YES;
    }else {
        _yView.backgroundColor = [UIColor yellowColor];
        blinkStatus = NO;
    }
}

-(void)popravi{
    
    self.semafor.stanjeSemafora = sFIX;
    self.lblStanjeSemafora.text = @"Semafor popravljen.";
    
    _rView.backgroundColor = [UIColor whiteColor];
    _yView.backgroundColor = [UIColor whiteColor];
    _gView.backgroundColor = [UIColor whiteColor];
    
    [countdownTimer2 invalidate];
    countdownTimer2 = nil;
    [countdownTimer invalidate];
    countdownTimer = nil;
}










- (void)AboutButtonPressed
{
    
    NSString *message = @"\n Semafor u radu ceka 17 sekundi za promenu stanja. \n\n Ukoliko je pokvaren, neophodno najpre popraviti, pa zatim startovati.\n";
    
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
