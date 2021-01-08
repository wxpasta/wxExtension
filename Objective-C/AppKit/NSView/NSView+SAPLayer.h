//
//  NSView+SAPLayer.h
//  macSAP
//
//  Created by magic-devel on 2020/12/28.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSView (SAPLayer)

@property (nullable, nonatomic, copy) IBInspectable NSColor *backgroundColor;

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic, readwrite, strong, nullable) IBInspectable NSColor *borderColor;

@property (nonatomic, readwrite, assign) IBInspectable CGFloat borderWidth;

@property (nonatomic, readwrite, assign) IBInspectable BOOL masksToBounds;

@end

NS_ASSUME_NONNULL_END
