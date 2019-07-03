//
//  UIView+IBLayer.h
//  WXCategories
//
//  Created by 巴糖 on 2018/11/15.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (IBLayer)

@property (nonatomic, readwrite, strong, nullable) IBInspectable UIColor *borderColor;

@property (nonatomic, readwrite, assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic, readwrite, assign) IBInspectable CGFloat borderWidth;

@property (nonatomic, readwrite, assign) IBInspectable CGFloat shadowRadius;

@property (nonatomic, readwrite, assign) IBInspectable float shadowOpacity;

@property (nonatomic, readwrite, assign) IBInspectable CGSize shadowOffset;

@property (nonatomic, readwrite, strong, nullable) IBInspectable UIColor *shadowColor;

@end

NS_ASSUME_NONNULL_END
