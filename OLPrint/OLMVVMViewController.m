//
//  OLMVVMViewController.m
//  OLPrint
//
//  Created by 魏旺 on 2017/4/3.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVVMViewController.h"
#import "OLMVVMViewModel.h"
#import "OLMVVMView.h"
#import "OLMVVMPaper.h"

@interface OLMVVMViewController ()
@property (nonatomic, strong)OLMVVMViewModel *mvvmViewModel;
@property (nonatomic, strong)OLMVVMView  *mvvmView;
@property (nonatomic, strong)OLMVVMPaper *mvvmPaper;
@end

@implementation OLMVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.mvvmView = [[OLMVVMView alloc] init];
    self.mvvmViewModel = [[OLMVVMViewModel alloc] init];
    self.mvvmPaper = [[OLMVVMPaper alloc] init];
    
    self.mvvmPaper.content = @"line 0";
    self.mvvmView.frame = self.view.bounds;
    [self.view addSubview:self.mvvmView];
    [self.mvvmView setWithViewModel:self.mvvmViewModel];
    [self.mvvmViewModel setWithPaper:self.mvvmPaper];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
