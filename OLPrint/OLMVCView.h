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

@interface OLMVCView : UIView
@property (nonatomic, weak)id<OLMVCViewDelegate> delegate;

- (void)printOnView:(OLMVCModel *)model;
@end
