//
//  GTViewController.m
//  Picnic
//
//  Created by Tim McHale on 5/23/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import "GTViewController.h"

@interface GTViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *basketTop;
@property (nonatomic, weak) IBOutlet UIImageView *basketBottom;
@property (nonatomic,weak) IBOutlet UIImageView *napkinTop;
@property (nonatomic,weak) IBOutlet UIImageView *napkinBottom;
@end

@implementation GTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect basketTopFrame = self.basketTop.frame;
    basketTopFrame.origin.y = -basketTopFrame.size.height;
    
    CGRect basketBottomFrame = self.basketBottom.frame;
    basketBottomFrame.origin.y = self.view.bounds.size.height;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelay:1.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    
    self.basketTop.frame = basketTopFrame;
    self.basketBottom.frame = basketBottomFrame;
    
    // At bottom of viewDidAppear
    CGRect napkinTopFrame = self.napkinTop.frame;
    napkinTopFrame.origin.y = -napkinTopFrame.size.height;
    CGRect napkinBottomFrame = self.napkinBottom.frame;
    napkinBottomFrame.origin.y = self.view.bounds.size.height;
    
    [UIView animateWithDuration:1
                          delay:1.5
                        options: UIViewAnimationCurveEaseOut
                     animations:^{
                         self.napkinTop.frame = napkinTopFrame;
                         self.napkinBottom.frame = napkinBottomFrame;
                     }
                     completion:^(BOOL finished){
                         NSLog(@"Done!");
                     }];
    
    
    

    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
