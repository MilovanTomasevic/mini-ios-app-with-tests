//
//  BasePageViewController.m
//  KYCircleMenuDemo
//
//  Created by Milovan Tomasevic on 28/07/2018.
//  Copyright © 2018 Kjuly. All rights reserved.
//

#import "BasePageViewController.h"
@interface BasePageViewController ()

@end

@implementation BasePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadPageControl];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    //[self loadPageControl];
}


-(void) loadPageControl{
    
    int pagesCount = 3;
    
    _pControl = [[UIPageControl alloc]init];
    [_pControl setPageIndicatorTintColor:[UIColor blackColor]];
    [_pControl setCurrentPageIndicatorTintColor:[UIColor orangeColor]];
    //[_pControl setBackgroundColor:[UIColor clearColor]];
    [_pControl setNumberOfPages:pagesCount];
    [_pControl setCurrentPage:0];
    
    //  bottom position
    //[_pControl setFrame:CGRectMake(0, self.view.frame.size.height - 55, self.view.frame.size.width, 55)];
    
    // top position
    [_pControl setFrame:CGRectMake(0, CGRectGetMaxY(self.navigationController.navigationBar.frame)+2, self.view.frame.size.width, 55)];
    [_pControl setAutoresizingMask:UIViewAutoresizingFlexibleTopMargin];
    [self.view addSubview:_pControl];
    
    UISwipeGestureRecognizer * swipeleft=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeleft:)];
    swipeleft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeleft];
    
    UISwipeGestureRecognizer * swiperight=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swiperight:)];
    swiperight.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swiperight];
}


-(void)swipeleft:(UISwipeGestureRecognizer*)gestureRecognizer
{
    
}

-(void)swiperight:(UISwipeGestureRecognizer*)gestureRecognizer
{
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{   //ovo radi zbog delegata, ukljucen vidi gore self.delegate
    
    [textField resignFirstResponder];
    return YES;
}

@end
