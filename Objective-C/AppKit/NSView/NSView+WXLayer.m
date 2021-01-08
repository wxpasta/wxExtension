//
//  NSView+WXLayer.m
//  WXMacCategories
//
//  Created by 许宝吉 on 2019/7/19.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "NSView+WXLayer.h"

@implementation NSView (WXLayer)

- (nullable NSColor *)backgroundColor {
    CGColorRef colorRef = self.layer.backgroundColor;
    
    if (colorRef != nil) {
        return [NSColor colorWithCGColor:colorRef];
    } else {
        return nil;
    }
}

- (void)setBackgroundColor:(NSColor *)backgroundColor {
    self.wantsLayer = YES;
    self.layer.backgroundColor = backgroundColor.CGColor;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.wantsLayer = YES;
    self.layer.cornerRadius = cornerRadius;
}

@end
