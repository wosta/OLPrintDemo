//
//  OLPresenter.h
//  OLPrint
//
//  Created by olive on 2017/3/29.
//  Copyright © 2017年 olive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OLMVPView.h"
#import "OLMVPModel.h"

@interface OLPresenter : NSObject
@property (nonatomic, strong)OLMVPModel *mvpModel;
@property (nonatomic, strong)OLMVPView  *mvpView;
- (void)printJobStart;
@end
