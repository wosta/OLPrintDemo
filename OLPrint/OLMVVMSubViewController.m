//
//  OLMVVMSubViewController.m
//  OLPrint
//
//  Created by  olive on 2017/4/13.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVVMSubViewController.h"

@interface OLMVVMSubViewController ()
/** <#name#> */
@property (nonatomic, strong) UILabel *contentLabel;
@end

@implementation OLMVVMSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.contentLabel = ({
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 100, 30)];
        label.text = self.paper.content;
        label.backgroundColor = [UIColor redColor];
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        label;
    });
    [self.view addSubview:self.contentLabel];
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
