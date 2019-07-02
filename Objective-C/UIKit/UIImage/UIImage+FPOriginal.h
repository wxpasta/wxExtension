//
//  UIImage+FPOriginal.h
//  WXCategories
//
//  Created by 巴糖 on 2018/11/1.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (FPOriginal)

- (UIImage *(^)(void))ffl_renderingModeAlwaysOriginal;

+ (UIImage *(^)(NSString *))ffl_original;

@end

NS_ASSUME_NONNULL_END
