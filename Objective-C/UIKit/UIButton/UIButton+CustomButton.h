//
//  UIButton+CustomButton.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/24.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (CustomButton)

- (UIButton * (^)(CGFloat))xyCornerRadius;

@end

NS_ASSUME_NONNULL_END
