//
//  UIButton+CustomButton.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (CustomButton)

- (UIButton * (^)(CGFloat))xyCornerRadius;

@end

NS_ASSUME_NONNULL_END
