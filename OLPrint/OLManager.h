//
//  OLManagerModel.h
//  OLPrint
//
//  Created by olive on 2017/3/27.
//  Copyright © 2017年 olive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OLEmployee.h"

@interface OLManager : NSObject<EmployeeDelegate>

/** <#type#> */
@property (nonatomic, copy) NSString *name;

+ (instancetype)shareMananger;
- (void)celebratePrintDone;
- (void)startPrintTask;
@end
