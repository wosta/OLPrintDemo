//
//  OLEmployee.m
//  OLPrint
//
//  Created by olive on 2017/3/27.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLEmployee.h"
#import "OLPrintHead.h"
//#import "OLManager.h"

@implementation OLEmployee
+ (instancetype)shareEmployee {
    static OLEmployee *employee = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        employee = [[OLEmployee alloc] init];
        
    });
    return employee;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(printJob) name:Notification_print_start object:nil];
    }
    return self;
}

- (void)printJob {
    NSLog(@"start print job");
    // 第一种：相互依赖
//    [[OLManager shareMananger] setName:@"aaaa"];
//    [[OLManager shareMananger] celebratePrintDone];
    
    // 第二种：就没有对Manager依赖了
//    if(self.delegate && [self.delegate respondsToSelector:@selector(startPrintJobProtocol)]){
//        [self.delegate startPrintJobProtocol];
//    }
    
    // 第三种：两者相互都不依赖
    //
    [[NSNotificationCenter defaultCenter] postNotificationName:Notification_print_end object:nil];

}
@end
