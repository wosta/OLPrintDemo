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
#import "OLMVCViewController.h"
#import "OLMVPViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    [[OLManager shareMananger] startPrintTask];
//
//    OLManager *manager = [[OLManager alloc] init];
//    [manager startPrintTask];
//
//    OLEmployee *employee = [[OLEmployee alloc] init];
//    [employee printJob];
    
    
    // the MVC
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self loadMVC];
    });
    
}

- (void)loadMVC {
    // MVC
//    OLMVCViewController *vc = [[OLMVCViewController alloc] init];
//    [self presentViewController:vc animated:YES completion:^{
//        
//    }];
    
    // MVP
    OLMVPViewController *vc = [[OLMVPViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
