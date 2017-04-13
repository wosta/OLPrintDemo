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
#import "OLMVVMSubViewController.h"

@interface OLMVVMViewController ()<OLMVVMViewDelegate>
@property (nonatomic, strong)OLMVVMViewModel *mvvmViewModel;
@property (nonatomic, strong)OLMVVMView  *mvvmView;
@property (nonatomic, strong)OLMVVMPaper *mvvmPaper;
/** <#name#> */
@property (nonatomic, strong) UIButton *subButton;
@end

@implementation OLMVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.mvvmView = [[OLMVVMView alloc] init];
    self.mvvmViewModel = [[OLMVVMViewModel alloc] init];
    self.mvvmPaper = [[OLMVVMPaper alloc] init];
    
    self.mvvmView.frame = self.view.bounds;
    [self.view addSubview:self.mvvmView];
    self.mvvmPaper.content = @"line 0";
    self.mvvmViewModel.contentStr = @"test";
    [self.mvvmView setWithViewModel:self.mvvmViewModel];
    [self.mvvmViewModel setWithPaper:self.mvvmPaper];

    self.mvvmView.delegate = self;

    self.subButton = ({
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 50)];
        button.backgroundColor = [UIColor redColor];
        [button setTitle:@"下一页" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(nextPage) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    [self.view addSubview:self.subButton];
}

- (void)nextPage {
    OLMVVMSubViewController *sub = [[OLMVVMSubViewController alloc] init];
    sub.paper = self.mvvmPaper;
    [self.navigationController pushViewController:sub animated:YES];
}

- (void)mvvmViewModelIsChange {
    NSLog(@"self.mvvmViewModel.contentStr=%@", self.mvvmViewModel.contentStr);
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
