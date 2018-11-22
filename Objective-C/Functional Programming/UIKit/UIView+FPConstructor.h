//
//  UIView+FPConstructor.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/20.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FPConstructor)

+ (instancetype (^)(void))ffl_init;

+ (instancetype (^)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy))ffl_initFrame;

@end

NS_ASSUME_NONNULL_END
