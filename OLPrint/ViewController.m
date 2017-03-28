//
//  ViewController.m
//  OLPrint
//
//  Created by olive on 2017/3/27.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "ViewController.h"
#import "OLManager.h"
#import "OLEmployee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [[OLManager shareMananger] startPrintTask];
    
    OLManager *manager = [[OLManager alloc] init];
    [manager startPrintTask];
    
    OLEmployee *employee = [[OLEmployee alloc] init];
//    [employee printJob];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
