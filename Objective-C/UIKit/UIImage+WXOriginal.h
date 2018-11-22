//
//  UIImage+WXOriginal.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/1.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (WXOriginal)

/**
 原图（禁止底层其他处理）

 @return UIImageRenderingModeAlwaysOriginal UIImage
 */
- (UIImage *)wx_renderingModeAlwaysOriginal;

#pragma mark - 构造函数
/**
 原图（禁止底层其他处理）

 @param imageName 图片名称
 @return UIImageRenderingModeAlwaysOriginal UIImage
 */
+ (instancetype)wx_imageWithOriginalName:(NSString *)imageName;


@end

NS_ASSUME_NONNULL_END
