//
//  UIView+FPSetCenter.h
//  WXCategories
//
//  Created by 巴糖 on 2018/10/16.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FPSetCenter)

- (void (^)(CGPoint))ffl_setCGCenter;
- (void (^)(CGFloat x,CGFloat y))ffl_setCenter;
- (void (^)(CGFloat))ffl_setCenterY;
- (void (^)(CGFloat))ffl_setCenterX;
@end

NS_ASSUME_NONNULL_END
