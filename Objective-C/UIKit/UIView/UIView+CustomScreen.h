//
//  UIView+CustomScreen.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (CustomScreen)

+ (CGRect (^)(void))XYScreen;

+ (CGSize (^)(void))XYScreenSize;

+ (CGFloat (^)(void))XYScreenWidth;

+ (CGFloat (^)(void))XYScreenHeight;

+ (CGFloat (^)(void))XYScreenScale;

+ (CGFloat (^)(void))XYScreenScale_320;

@end

NS_ASSUME_NONNULL_END
