//
//  UIView+FPSetCenter.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FPSetCenter)

- (void (^)(CGPoint))ffl_setCGCenter;
- (void (^)(CGFloat x,CGFloat y))ffl_setCenter;
- (void (^)(CGFloat))ffl_setCenterY;
- (void (^)(CGFloat))ffl_setCenterX;
@end

NS_ASSUME_NONNULL_END
