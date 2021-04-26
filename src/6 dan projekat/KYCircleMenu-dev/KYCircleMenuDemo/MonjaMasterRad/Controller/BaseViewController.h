//
//  BaseViewController.h
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 24/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController


@property(nonatomic, strong) UIBarButtonItem *rightButton;
-(void)AboutButtonPressedWith:(NSString*)message;

@end
