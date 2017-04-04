//
//  OLMVVMViewModel.m
//  OLPrint
//
//  Created by 魏旺 on 2017/4/3.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVVMViewModel.h"
#import "OLMVVMView.h"
#import "OLMVVMPaper.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"    

@interface OLMVVMViewModel ()
@property (nonatomic, strong) OLMVVMPaper *paper;
@end

@implementation OLMVVMViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setWithPaper:(OLMVVMPaper *)paper {
    self.paper = paper;
    self.contentStr = paper.content;
}

- (void)onPrintClick {
    NSInteger line = arc4random()%10+1;
    self.paper.content = [NSString stringWithFormat:@"line %ld", line];
    self.contentStr = self.paper.content;
}
@end
