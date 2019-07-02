//
//  UIButton+IBLayerTitle.h
//  XYAPPTest
//
//  Created by 巴糖 on 2019/1/18.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (IBLayerTitle)

/**
 * Title of disabled state for button;
 * 禁用状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property (nonatomic, copy) IBInspectable NSString *disabledTitle;

/**
 * Title of highlighted state for button;
 * 高亮状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property (nonatomic, copy) IBInspectable NSString *highlightedTitle;


/**
 * Title of normal state for button;
 * 默认状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property (nonatomic, copy) IBInspectable NSString *normalTitle;

/**
 * Title of selected state for button;
 * 选中状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property (nonatomic, copy) IBInspectable NSString *selectedTitle;

@end

NS_ASSUME_NONNULL_END
