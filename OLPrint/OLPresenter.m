//
//  OLPresenter.m
//  OLPrint
//
//  Created by olive on 2017/3/29.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLPresenter.h"

@interface OLPresenter()
{
    
}
@end

@implementation OLPresenter
- (void)printJobStart {
    [self.mvpView printOnView:self.mvpModel.content];
}

- (void)printButtonClick {
    NSLog(@"print button clicked");
}
@end
