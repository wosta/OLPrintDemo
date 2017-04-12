//
//  OLMVCView.m
//  OLPrint
//
//  Created by olive on 2017/3/28.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVCView.h"

@interface OLMVCView ()
@property (nonatomic, strong) UIButton *button;
@end

@implementation OLMVCView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
        [self.button setTitle:@"print" forState:UIControlStateNormal];
        self.button.backgroundColor = [UIColor redColor];
        [self.button addTarget:self action:@selector(printClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.button];
    }
    return self;
}

- (void)printClick{
    if (self.delegate && [self.delegate respondsToSelector:@selector(printButtonClick)]) {
        self.changValue = @"changed";
        [self.delegate printButtonClick];
    }

    self.viewBlock(@"changed in 4:30 pm.");
}

- (void)printOnView:(OLMVCModel *)model {
    NSLog(@"line 0 \n the content: %@", model.content);
}

@end
