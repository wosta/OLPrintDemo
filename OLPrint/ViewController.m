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
#import "OLMVVMViewController.h"

static NSInteger kDesignNumber = 3;
static NSString  *viewControllerReusableCellWithIdentifierID = @"viewControllerReusableCellWithIdentifierID";

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView        *tableView;
@property (nonatomic, strong)NSArray            *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];

    self.tableView = ({
        UITableView *tbView = [[UITableView alloc] initWithFrame:CGRectMake(0, 10, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        [tbView registerClass:[UITableViewCell class] forCellReuseIdentifier:viewControllerReusableCellWithIdentifierID];
        tbView.delegate = self;
        tbView.dataSource = self;
        tbView;
    });
    [self.view addSubview:self.tableView];

//    [[OLManager shareMananger] startPrintTask];
//
//    OLManager *manager = [[OLManager alloc] init];
//    [manager startPrintTask];
//
//    OLEmployee *employee = [[OLEmployee alloc] init];
//    [employee printJob];
    
    
    // the MVC
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self loadMVC];
    });

}

- (void)loadMVC {
    // MVC
    OLMVCViewController *vc = [[OLMVCViewController alloc] init];
    [self presentViewController:vc animated:YES completion:^{
        
    }];

    // MVP
//    OLMVPViewController *vc = [[OLMVPViewController alloc] init];
//    [self presentViewController:vc animated:YES completion:^{
//        
//    }];

    // MVVM
//    OLMVVMViewController *vc = [[OLMVVMViewController alloc] init];
//    [self presentViewController:vc animated:YES completion:^{
//        
//    }];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return kDesignNumber;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:viewControllerReusableCellWithIdentifierID forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", self.dataArray[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        OLMVCViewController *vc = [[OLMVCViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 1) {
        OLMVPViewController *vc = [[OLMVPViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (indexPath.row == 2) {
        OLMVVMViewController *vc = [[OLMVVMViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

- (NSArray *)dataArray {
    if(!_dataArray) {
        self.dataArray = [[NSArray alloc] initWithObjects:@"MVC", @"MVP", @"MVVM", nil];
    }
    return _dataArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
