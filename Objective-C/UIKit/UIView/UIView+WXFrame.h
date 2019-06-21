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

#pragma mark - origin
@property (nonatomic, readwrite, assign) CGFloat wx_top;   //y
@property (nonatomic, readwrite, assign) CGFloat wx_bottom;
@property (nonatomic, readwrite, assign) CGFloat wx_left;  //x
@property (nonatomic, readwrite, assign) CGFloat wx_right;

#pragma mark - size
@property (nonatomic, readwrite, assign) CGFloat wx_width;
@property (nonatomic, readwrite, assign) CGFloat wx_height;

#pragma mark - properties
@property (nonatomic, readwrite, assign) CGPoint wx_origin;
@property (nonatomic, readwrite, assign) CGSize wx_size;

@end

NS_ASSUME_NONNULL_END
