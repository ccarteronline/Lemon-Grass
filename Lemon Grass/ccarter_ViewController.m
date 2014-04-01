//
//  ccarter_ViewController.m
//  Lemon Grass
//
//  Created by Chris Carter on 3/21/14.
//  Copyright (c) 2014 CCarterOnline. All rights reserved.
//

#import "ccarter_ViewController.h"

@interface ccarter_ViewController ()

@end

@implementation ccarter_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _myTableView = [[ccarter_TableViewController alloc]init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
