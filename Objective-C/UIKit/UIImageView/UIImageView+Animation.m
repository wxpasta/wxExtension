//
//  UIImageView+Animation.m
//  WXCategories
//
//  Created by 巴糖 on 2019/6/24.
//  Copyright © 2019 巴糖. All rights reserved.
//

#import "UIImageView+Animation.h"

@implementation UIImageView (Animation)

- (void)startRotationAnimationWithImage:(UIImage *)image {
    self.image = image;
    self.hidden = NO;
    CAAnimation *animation = [self.layer animationForKey:@"customActivityAnimation"];
    if (!animation)
    {
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
        animation.fromValue = [NSNumber numberWithFloat:0.0];
        animation.toValue = [NSNumber numberWithFloat: 2* M_PI];
        animation.duration = 1.0;
        animation.repeatCount = CGFLOAT_MAX;
        
        [self.layer addAnimation:animation forKey:@"customActivityAnimation"];
    }
}

- (void)stopAllAnimation {
    [self.layer removeAllAnimations];
    self.image = nil;
    self.hidden = YES;
}

@end
