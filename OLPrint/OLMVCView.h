//
//  OLMVCView.h
//  OLPrint
//
//  Created by olive on 2017/3/28.
//  Copyright © 2017年 olive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OLMVCModel.h"

@protocol OLMVCViewDelegate <NSObject>

- (void)printButtonClick;

@end

typedef void (^OLMVCViewBlock)(NSString *name);

@interface OLMVCView : UIView
@property (nonatomic, copy)NSString *changValue;
@property (nonatomic, weak)id<OLMVCViewDelegate> delegate;
@property (nonatomic, strong)OLMVCViewBlock viewBlock;
- (void)printOnView:(OLMVCModel *)model;
@end
