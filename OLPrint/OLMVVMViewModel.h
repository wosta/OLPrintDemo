//
//  OLMVVMViewModel.h
//  OLPrint
//
//  Created by 魏旺 on 2017/4/3.
//  Copyright © 2017年 olive. All rights reserved.
//

#import <Foundation/Foundation.h>
@class OLMVVMPaper;

@interface OLMVVMViewModel : NSObject
// 用来跟view 和 model 双向绑定的
@property (nonatomic, strong) NSString *contentStr;
- (void)setWithPaper:(OLMVVMPaper *)paper;
- (void)onPrintClick;
@end
