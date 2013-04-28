//
//  MainViewController.m
//  StaticDemo
//
//  Created by kimpeng on 13-4-28.
//  Copyright (c) 2013年 kimpeng. All rights reserved.
//

#import "MainViewController.h"
#import "StaticObject.h"
#import "Profile.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *b = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [b setFrame:CGRectMake(0, 0, 100, 100)];
    [b setTitle:@"获取数据" forState:UIControlStateNormal];
    [b addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(0, 150, 100, 100)];
    [btn setTitle:@"删除数据" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.view.backgroundColor = [UIColor grayColor];
    
}

- (void)buttonAction
{
    Profile *profile = [[Profile alloc] init];
    profile.name = @"金 鹏";
    profile.sex = @"男";
    profile.level = @"70";
    [StaticObject setTemporaryProfile:profile];
}

- (void)btnAction
{
    [StaticObject clearTemporaryProfile];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
