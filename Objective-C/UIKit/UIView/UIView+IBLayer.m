
//
//  UIView+IBLayer.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/15.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UIView+IBLayer.h"

@implementation UIView (IBLayer)

- (UIColor *)borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}
- (CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius{
    self.layer.cornerRadius = cornerRadius;
}

- (CGFloat)borderWidth{
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth{
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)shadowRadius{
    return self.layer.shadowRadius;
}

- (void)setShadowRadius:(CGFloat)shadowRadius{
    self.layer.shadowRadius = shadowRadius;
}

- (CGFloat)shadowOpacity{
   return self.layer.shadowOpacity;
}

- (void)setShadowOpacity:(CGFloat)shadowOpacity{
    self.layer.shadowOpacity = shadowOpacity;
}

- (CGSize)shadowOffset{
    return self.layer.shadowOffset;
}

- (void)setShadowOffset:(CGSize)shadowOffset{
    self.layer.shadowOffset = shadowOffset;
}

- (UIColor *)shadowColor{
    return [UIColor colorWithCGColor:self.layer.shadowColor];
}

- (void)setShadowColor:(UIColor *)shadowColor{
    self.layer.shadowColor = shadowColor.CGColor;
}
@end
