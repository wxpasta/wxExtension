//
//  UIView+FPSetFrame.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FPSetFrame)


- (void(^)(float))ffl_setTop;

- (void(^)(float))ffl_setLeft;

- (void(^)(float))ffl_setWidth;

- (void(^)(float))ffl_setHeight;

- (void (^)(CGSize))ffl_setCGSize;

- (void (^)(CGFloat dx,CGFloat dy))ffl_setSize;

- (void (^)(CGPoint))ffl_setCGPoint;

- (void (^)(CGFloat x,CGFloat y))ffl_setOrigin;

- (void (^)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy))ffl_setFrame;

@end

NS_ASSUME_NONNULL_END
