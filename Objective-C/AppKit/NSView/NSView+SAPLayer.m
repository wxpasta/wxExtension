//
//  NSView+SAPLayer.m
//  macSAP
//
//  Created by magic-devel on 2020/12/28.
//

#import "NSView+SAPLayer.h"

@implementation NSView (SAPLayer)

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


- (nullable NSColor *)borderColor {
    CGColorRef borderColor = self.layer.borderColor;
    if (borderColor) {
        return [NSColor colorWithCGColor:borderColor];
    }else{
        return nil;
    }
}

- (void)setBorderColor:(NSColor *)borderColor {
    self.wantsLayer = YES;
    self.layer.borderColor = borderColor.CGColor;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.wantsLayer = YES;
    self.layer.borderWidth = borderWidth;
}


- (void)setMasksToBounds:(BOOL)masksToBounds{
    self.wantsLayer = YES;
    self.layer.masksToBounds = masksToBounds;
}

- (BOOL)masksToBounds{
    return self.layer.masksToBounds;
}

@end
