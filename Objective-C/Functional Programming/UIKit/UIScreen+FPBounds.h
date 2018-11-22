//
//  UIScreen+FPBounds.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScreen (FPBounds)

+ (CGFloat (^)(void))ffl_width;
+ (CGFloat (^)(void))ffl_height;
+ (CGFloat (^)(void))ffl_scale;

+ (CGSize (^)(void))ffl_size;


@end

NS_ASSUME_NONNULL_END
