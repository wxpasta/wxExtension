
//
//  UIView+IBLayer.m
//  WXCategories
//
//  Created by 巴糖 on 2018/11/15.
//  Copyright © 2018 巴糖. All rights reserved.
//

#import "UIView+IBLayer.h"

@implementation UIView (IBLayer)

- (nullable UIColor *)borderColor {
    CGColorRef borderColor = self.layer.borderColor;
    if (borderColor) {
        return [UIColor colorWithCGColor:borderColor];
    }else{
        return nil;
    }
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

- (float)shadowOpacity{
   return self.layer.shadowOpacity;
}

- (void)setShadowOpacity:(float)shadowOpacity{
    self.layer.shadowOpacity = shadowOpacity;
}

- (CGSize)shadowOffset{
    return self.layer.shadowOffset;
}

- (void)setShadowOffset:(CGSize)shadowOffset{
    self.layer.shadowOffset = shadowOffset;
}

- (nullable UIColor *)shadowColor{
    CGColorRef shadowColor = self.layer.shadowColor;
    if (shadowColor) {
        return [UIColor colorWithCGColor:shadowColor];
    }else{
        return nil;
    }
}

- (void)setShadowColor:(UIColor *)shadowColor{
    self.layer.shadowColor = shadowColor.CGColor;
}
@end
