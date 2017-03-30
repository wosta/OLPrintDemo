//
//  OLMVPViewController.m
//  OLPrint
//
//  Created by olive on 2017/3/29.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVPViewController.h"
#import "OLMVPModel.h"
#import "OLPresenter.h"
#import "OLMVPView.h"

@interface OLMVPViewController ()<OLMVPViewDelegate>
@property (nonatomic, strong)OLPresenter *presenter;
@property (nonatomic, strong)OLMVPView   *mvpView;
@property (nonatomic, strong)OLMVPModel  *mvpModel;
@end

@implementation OLMVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.presenter = [[OLPresenter alloc] init];
    self.mvpModel = [[OLMVPModel alloc] init];
    self.mvpModel.content = @"line 0";
    
    self.mvpView = [[OLMVPView alloc] initWithFrame:self.view.bounds];
    // 还是重写initWithFrame会更好 http://www.jianshu.com/p/68b383b129f9
//    self.mvpView.frame = self.view.frame;
    [self.view addSubview:self.mvpView];
    
    self.presenter.mvpModel = self.mvpModel;
    self.presenter.mvpView = self.mvpView;
    
    self.mvpView.delegate = self.presenter;
    [self.presenter printJobStart];
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
