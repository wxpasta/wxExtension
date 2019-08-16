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

/** Border color of view;
 also inspectable from Storyboard.
 */
@property (nonatomic, readwrite, strong, nullable) IBInspectable UIColor *borderColor;

/**
 Corner radius of view;
 also inspectable from Storyboard.
 */
@property (nonatomic, readwrite, assign) IBInspectable CGFloat cornerRadius;

/**
 Border width of view;
 also inspectable from Storyboard.
 */
@property (nonatomic, readwrite, assign) IBInspectable CGFloat borderWidth;

/**
 Shadow radius of view;
 also inspectable from Storyboard.
 */
@property (nonatomic, readwrite, assign) IBInspectable CGFloat shadowRadius;

/**
 Shadow opacity of view;
 also inspectable from Storyboard.
 */
@property (nonatomic, readwrite, assign) IBInspectable float shadowOpacity;

/**
 Shadow offset of view;
 also inspectable from Storyboard.
 */
@property (nonatomic, readwrite, assign) IBInspectable CGSize shadowOffset;

/**
 Shadow color of view;
 also inspectable from Storyboard.
 */
@property (nonatomic, readwrite, strong, nullable) IBInspectable UIColor *shadowColor;

@end

NS_ASSUME_NONNULL_END
