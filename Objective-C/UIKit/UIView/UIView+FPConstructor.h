//
//  UIView+FPConstructor.h
//  WXCategories
//
//  Created by 巴糖 on 2018/10/20.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FPConstructor)

+ (instancetype (^)(void))ffl_init;

+ (instancetype (^)(CGFloat x,CGFloat y, CGFloat dx,CGFloat dy))ffl_initFrame;

@end

NS_ASSUME_NONNULL_END
