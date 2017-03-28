//
//  OLManagerModel.m
//  OLPrint
//
//  Created by olive on 2017/3/27.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLManager.h"
#import "OLEmployee.h"
#import "OLPrintHead.h"

@implementation OLManager
+ (instancetype)shareMananger {
    static OLManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[OLManager alloc] init];
    });
    return manager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(celebratePrintDone) name:Notification_print_end object:nil];
    }
    return self;
}

- (void)celebratePrintDone {
    NSLog(@"celebrate print done");
//    NSLog(@"%@",[OLManager shareMananger].name);
    
}

- (void)startPrintTask {
//    [OLEmployee shareEmployee].delegate = self;
//    [[OLEmployee shareEmployee] printJob];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:Notification_print_start object:nil];
}

- (void)startPrintJobProtocol {
    NSLog(@"celebrate print done");
}

@end
