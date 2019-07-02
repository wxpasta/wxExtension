//
//  UIColor+CustomColor.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CustomColor)

+ (UIColor *(^)(int, CGFloat))customColor;

UIColor* UIColorFromHex(NSInteger colorInHex);
@end

NS_ASSUME_NONNULL_END
