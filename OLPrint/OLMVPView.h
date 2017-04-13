//
//  OLMVPView.h
//  OLPrint
//
//  Created by olive on 2017/3/29.
//  Copyright © 2017年 olive. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol OLMVPViewDelegate <NSObject>

- (void)printButtonClick;

@end

@interface OLMVPView : UIView
@property (nonatomic, weak)id<OLMVPViewDelegate> delegate;
- (void)printOnView:(NSString *)content;

@end
