//
//  UIView+FPSetFrame.h
//  WXCategories
//
//  Created by 巴糖 on 2018/10/16.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FPSetFrame)


- (void(^)(CGFloat))ffl_setTop;

- (void(^)(CGFloat))ffl_setLeft;

- (void(^)(CGFloat))ffl_setWidth;

- (void(^)(CGFloat))ffl_setHeight;

- (void (^)(CGSize))ffl_setCGSize;

- (void (^)(CGFloat dx,CGFloat dy))ffl_setSize;

- (void (^)(CGPoint))ffl_setCGPoint;

- (void (^)(CGFloat x,CGFloat y))ffl_setOrigin;

- (void (^)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy))ffl_setFrame;

@end

NS_ASSUME_NONNULL_END
