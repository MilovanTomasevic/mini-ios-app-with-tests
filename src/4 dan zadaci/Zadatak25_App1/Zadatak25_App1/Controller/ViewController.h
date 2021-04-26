//
//  ViewController.h
//  Zadatak25_App1
//
//  Created by Milovan Tomasevic on 19/07/2018.
//  Copyright © 2018 Milovan Tomasevic. All rights reserved.
//

#import <UIKit/UIKit.h>  //advanced features to create iOS app, sadrzi Foundation

@class Quotes; // kazemo kompajleru da imamo tu klasu u projektu

@interface ViewController : UIViewController

// properties
@property (nonatomic, strong) Quotes *quote;

@property (weak, nonatomic) IBOutlet UILabel *lblQuotesTitle;
//IBOutlets
@property (weak, nonatomic) IBOutlet UILabel *lblQuote;
//IBActions
- (IBAction)btnNextClicked;

@end

