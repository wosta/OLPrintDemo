//
//  OLEmployee.h
//  OLPrint
//
//  Created by olive on 2017/3/27.
//  Copyright © 2017年 olive. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EmployeeDelegate <NSObject>

- (void)startPrintJobProtocol;

@end

@interface OLEmployee : NSObject

@property(nonatomic, weak) id<EmployeeDelegate> delegate;

+ (instancetype)shareEmployee;
- (void)printJob;
@end
