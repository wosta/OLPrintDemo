//
//  OLEmployee.m
//  OLPrint
//
//  Created by olive on 2017/3/27.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLEmployee.h"
#import "OLManager.h"

@implementation OLEmployee
+ (instancetype)shareEmployee {
    static OLEmployee *employee = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        employee = [[OLEmployee alloc] init];
    });
    return employee;
}

- (void)printJob {
    NSLog(@"start print job");
    [[OLManager shareMananger] setName:@"aaaa"];
    [[OLManager shareMananger] celebratePrintDone];
}
@end
