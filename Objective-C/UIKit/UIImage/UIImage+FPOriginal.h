//
//  UIImage+FPOriginal.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/1.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (FPOriginal)

- (UIImage *(^)(void))ffl_renderingModeAlwaysOriginal;

+ (UIImage *(^)(NSString *))ffl_original;

@end

NS_ASSUME_NONNULL_END
