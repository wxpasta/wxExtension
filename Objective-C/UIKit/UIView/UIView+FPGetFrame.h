//
//  UIView+FPGetFrame.h
//  WXCategories
//
//  Created by 巴糖 on 2018/10/20.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FPGetFrame)

- (CGFloat (^)(void))ffl_left;

- (CGFloat (^)(void))ffl_top;

- (CGFloat (^)(void))ffl_width;

- (CGFloat (^)(void))ffl_height;

- (CGPoint (^)(void))ffl_origin;

- (CGSize (^)(void))ffl_size;

- (CGFloat (^)(void))ffl_right;

- (CGFloat (^)(void))ffl_bottom;

@end

NS_ASSUME_NONNULL_END
