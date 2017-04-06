//
//  OLMVVMView.m
//  OLPrint
//
//  Created by 魏旺 on 2017/4/3.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVVMView.h"
#import "FBKVOController.h"
#import "OLMVVMViewModel.h"
#import "NSObject+FBKVOController.h"

@interface OLMVVMView ()

@end

@implementation OLMVVMView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.lbContent = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
        self.lbContent.textColor = [UIColor lightGrayColor];
        self.lbContent.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.lbContent];
        
        self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
        [self.button setTitle:@"print" forState:UIControlStateNormal];
        self.button.backgroundColor = [UIColor redColor];
        [self.button addTarget:self action:@selector(printClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.button];
    }
    return self;
}

- (void)printClick{
    [self.mvvmViewModel onPrintClick];
    if(self.delegate && [self.delegate respondsToSelector:@selector(mvvmViewModelIsChange)]) {
        [self.delegate mvvmViewModelIsChange];
    }
}

- (void)setWithViewModel:(OLMVVMViewModel *)vm {
    self.mvvmViewModel = vm;
    // keyPath 是model的属性
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        NSString *content = change[NSKeyValueChangeNewKey];
        
        self.lbContent.text = content;
    }];
}

@end
