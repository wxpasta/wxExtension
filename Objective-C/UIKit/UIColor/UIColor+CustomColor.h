//
//  UIColor+CustomColor.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CustomColor)

+ (UIColor *(^)(int, float))customColor;

@end

NS_ASSUME_NONNULL_END
