//
//  SubViewController.m
//  StaticDemo
//
//  Created by kimpeng on 13-4-28.
//  Copyright (c) 2013年 kimpeng. All rights reserved.
//

#import "SubViewController.h"
#import "MainViewController.h"
#import "StaticObject.h"
#import "Profile.h"

@interface SubViewController ()

@end

@implementation SubViewController

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
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    UIButton *b = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [b setFrame:CGRectMake(0, 0, 100, 100)];
    [b setTitle:@"切换视图" forState:UIControlStateNormal];
    [b addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:b];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(0, 150, 100, 100)];
    [btn setTitle:@"打印数据" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)buttonAction
{
    MainViewController *mvc = [[MainViewController alloc] init];
    [self.navigationController pushViewController:mvc animated:YES];
    [mvc release];
}

- (void)btnAction
{
    Profile *profile = [StaticObject getTemporaryProfile];
    NSLog(@"%@", profile.name);
    NSLog(@"%@", profile.sex);
    NSLog(@"%@", profile.level);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
