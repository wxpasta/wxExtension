//
//  UIImageView+Animation.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Animation)

- (void)startRotationAnimationWithImage:(UIImage *)image;

- (void)stopAllAnimation;

@end

NS_ASSUME_NONNULL_END
