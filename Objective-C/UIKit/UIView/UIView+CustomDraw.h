//
//  UIView+CustomDraw.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/24.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CustomDraw)

- (UIView *)drawLineWithFrame:(CGRect)frame
                        color:(UIColor*)color
                 autoSizeMask:(UIViewAutoresizing)mask;

@end

NS_ASSUME_NONNULL_END
