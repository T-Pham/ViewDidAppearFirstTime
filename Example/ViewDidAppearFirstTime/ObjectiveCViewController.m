//
//  ObjectiveCViewController.m
//  ViewDidAppearFirstTime_Example
//
//  Created by Thanh Pham on 3/22/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

#import "ObjectiveCViewController.h"
#import "ViewDidAppearFirstTime_Example-Swift.h"

@interface ObjectiveCViewController () <FirstAppearance>

@property (nonatomic) UIButton *dismissButton;

@end

@implementation ObjectiveCViewController

- (void)loadView {
    [super loadView];
    self.dismissButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.dismissButton setTitle:@"Dismiss" forState:UIControlStateNormal];
    [self.dismissButton sizeToFit];
    [self.dismissButton addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.dismissButton];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.dismissButton.center = self.view.center;
}

- (void)viewWillAppearFirstTime:(BOOL)animated {
    NSLog(@"ObjectiveCViewController viewWillAppearFirstTime");
}

- (void)viewWillAppearAgain:(BOOL)animated {
    NSLog(@"ObjectiveCViewController viewWillAppearAgain");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"ObjectiveCViewController viewWillAppear");
}

- (void)viewDidAppearFirstTime:(BOOL)animated {
    NSLog(@"ObjectiveCViewController viewDidAppearFirstTime");
}

- (void)viewDidAppearAgain:(BOOL)animated {
    NSLog(@"ObjectiveCViewController viewDidAppearAgain");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"ObjectiveCViewController viewDidAppear");
}

- (void)dismiss {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
