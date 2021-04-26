//
//  ViewController.m
//  Zadatak25_App1
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//
/* MVC
 Model - podaci sa kojima app interaguje
 View - ono sto korisnik vidi (storyboard), user interface - dizajn
 
 Controler - poveznica izmedju modela i view, uzeti podatke iz model i prikazati ih na view
 (interact with model and update a view)- logika.model i view direktno ne mogu komunicirati !!
 
 
 */

#import "ViewController.h"
#import "Quotes.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {  //iOS life cycle method / prva koja se poziva
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Ovo je pozvano iz viewDidLoad");
    
    self.lblQuotesTitle.backgroundColor = [UIColor greenColor];
    self.view.backgroundColor = [UIColor yellowColor];
    
    self.quote = [[Quotes alloc] init];
}


- (void)didReceiveMemoryWarning {    // ne brini o ovome, ovo je za leak memory apps, moze se obrisati
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnNextClicked {
    
    NSLog(@"Dugme je kliknuto");
    
    //[_lblQuote setText:@"Hello"]; //labela se promjeni u Hello
    self.view.backgroundColor =[UIColor blackColor]; //znaci ja mogu da postavim kojku hocu akciju u kontroleru na klik dugmeta
    self.lblQuote.backgroundColor = [UIColor orangeColor];
    
    self.lblQuote.text = [self.quote returnRandomQuote];
    
    
}
@end
