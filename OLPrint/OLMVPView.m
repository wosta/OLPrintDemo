//
//  OLMVPView.m
//  OLPrint
//
//  Created by olive on 2017/3/29.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLMVPView.h"

@interface OLMVPView ()
@property (nonatomic, strong) UILabel  *lableContent;
@property (nonatomic, strong) UIButton *button;
@end

@implementation OLMVPView

//- (instancetype)init {
//    self = [super init];
//    if (self) {
//        self.lableContent = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
//        self.lableContent.textColor = [UIColor redColor];
//        [self addSubview:self.lableContent];
//    }
//    return self;
//}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.lableContent = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
        self.lableContent.textColor = [UIColor redColor];
        [self addSubview:self.lableContent];
        
        self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
        [self.button setTitle:@"print" forState:UIControlStateNormal];
        self.button.backgroundColor = [UIColor redColor];
        [self.button addTarget:self action:@selector(printClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.button];
    }
    return self;
}

- (void)printOnView:(NSString *)content {
    self.lableContent.text = content;
}

- (void)printClick{
    if (self.delegate && [self.delegate respondsToSelector:@selector(printButtonClick)]) {
        [self.delegate printButtonClick];
    }
}

@end
