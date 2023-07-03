//
//  UISearchBar+CteateUI.h
//  WXCategories
//
//  Created by 许宝吉 on 2023/7/3.
//  Copyright © 2023 许宝吉. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UISearchBar (CteateUI)

+ (UISearchBar *)searchBarWithBackgroundColor:(UIColor *)backgroundColor
                                        frame:(CGRect)frame
                                       radius:(CGFloat)radius;
@end

NS_ASSUME_NONNULL_END
