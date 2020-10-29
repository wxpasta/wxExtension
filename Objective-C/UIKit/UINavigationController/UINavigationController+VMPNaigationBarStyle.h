//
//  UINavigationController+VMPNaigationBarStyle.h
//  vmp
//
//  Created by magic-devel on 2020/9/30.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (VMPNaigationBarStyle)

/// 移除导航栏中底部直线
- (void)removeNavigationBarBottomLine;

/// 修改导航栏中底部直线颜色
- (void)setNavigationBarBottonLineWithColor:(UIColor *)color;

/// 背景色
- (void)setNavigationBarBackgroundWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
