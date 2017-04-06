//
//  OLMVVMView.h
//  OLPrint
//
//  Created by 魏旺 on 2017/4/3.
//  Copyright © 2017年 olive. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OLMVVMViewModel;

@protocol OLMVVMViewDelegate <NSObject>

- (void)mvvmViewModelIsChange;

@end

@interface OLMVVMView : UIView
@property (nonatomic, strong) UILabel *lbContent;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) OLMVVMViewModel *mvvmViewModel;
@property (nonatomic, weak) id<OLMVVMViewDelegate> delegate;

- (void)setWithViewModel:(OLMVVMViewModel *)vm;

@end
