//
//  UIView+WXFrame.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (WXFrame)

@property (nonatomic, assign) CGFloat wx_top;   //y
@property (nonatomic, assign) CGFloat wx_bottom;
@property (nonatomic, assign) CGFloat wx_left;  //x
@property (nonatomic, assign) CGFloat wx_right;

@property (nonatomic, assign) CGFloat wx_width;
@property (nonatomic, assign) CGFloat wx_height;

@property (nonatomic, assign) CGPoint wx_origin;
@property (nonatomic, assign) CGSize wx_size;

@end

NS_ASSUME_NONNULL_END
