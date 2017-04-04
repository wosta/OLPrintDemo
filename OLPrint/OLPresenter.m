//
//  OLPresenter.m
//  OLPrint
//
//  Created by olive on 2017/3/29.
//  Copyright © 2017年 olive. All rights reserved.
//

#import "OLPresenter.h"

@interface OLPresenter()<OLMVPViewDelegate>
{
    
}
@end

@implementation OLPresenter
- (void)printJobStart {
    [self.mvpView printOnView:self.mvpModel.content];
}

- (void)printButtonClick {
    NSInteger lineNumber = arc4random()%10+1;
    self.mvpModel.content = [NSString stringWithFormat:@"line %ld", lineNumber];
    [self.mvpView printOnView:self.mvpModel.content];
}

@end
