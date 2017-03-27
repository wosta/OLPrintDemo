//
//  OLManagerModel.m
//  OLPrint
//
//  Created by olive on 2017/3/27.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLManager.h"
#import "OLEmployee.h"

@implementation OLManager
+ (instancetype)shareMananger {
    static OLManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[OLManager alloc] init];
    });
    return manager;
}

- (void)celebratePrintDone {
    NSLog(@"celebrate print done");
    NSLog(@"%@",[OLManager shareMananger].name);
}

- (void)startPrintTask {
    [[OLEmployee shareEmployee] printJob];
}
@end
