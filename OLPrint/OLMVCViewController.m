//
//  OLMVCViewController.m
//  OLPrint
//
//  Created by olive on 2017/3/28.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVCViewController.h"
#import "OLMVCView.h"
#import "OLMVCModel.h"

@interface OLMVCViewController ()<OLMVCViewDelegate>
@property (nonatomic, strong)OLMVCModel *model;
@property (nonatomic, strong)OLMVCView  *mvcView;
@end

@implementation OLMVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.model = [[OLMVCModel alloc] init];
    self.model.content = @"hello print";
    
    self.mvcView = [[OLMVCView alloc] init];
    self.mvcView.delegate = self;
    self.mvcView.changValue = @"init value";
    self.mvcView.frame = self.view.bounds;
    [self.mvcView printOnView: self.model];
    [self.view addSubview:self.mvcView];
    NSLog(@"before the button clicked the self.mvcView.changeValue is %@", self.mvcView.changValue);
    self.mvcView.viewBlock = ^(NSString *name){
        NSLog(@"hello block = %@", name);
    };
}

- (void)printButtonClick {
    NSLog(@"print button clicked");
    NSLog(@"self.mvcView.changeValue is %@", self.mvcView.changValue);
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
