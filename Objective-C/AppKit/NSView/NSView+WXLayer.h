//
//  NSView+WXLayer.h
//  WXMacCategories
//
//  Created by 许宝吉 on 2019/7/19.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSView (WXLayer)

@property (nullable, nonatomic, copy) IBInspectable NSColor *backgroundColor;

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;


@end

NS_ASSUME_NONNULL_END
