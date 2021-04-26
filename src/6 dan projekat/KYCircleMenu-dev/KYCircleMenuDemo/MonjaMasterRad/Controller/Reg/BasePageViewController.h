//
//  BasePageViewController.h
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasePageViewController : UIViewController<UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UIPageControl *pControl;

@end
