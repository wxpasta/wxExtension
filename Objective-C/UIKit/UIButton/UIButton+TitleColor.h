//
//  UIButton+TitleColorColor.h
//  UIButtonTest
//
//  Created by 巴糖 on 2017/8/23.
//  Copyright © 2019年 crazyit.org. All rights reserved.
//

@import UIKit;

@interface UIButton (TitleColorColor)

/**
 * Title Color of normal state for button;
 * 默认状态下按钮的文字颜色；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIColor *titleColorForNormal;

/**
 * Title Color of highlighted state for button;
 * 高亮状态下按钮的文字颜色；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIColor *titleColorForHighlighted;

/**
 * Title Color of disabled state for button;
 * 禁用状态下按钮的文字颜色；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIColor *titleColorForDisabled;

/**
 * Title Color of selected state for button;
 * 选中状态下按钮的文字颜色；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIColor *titleColorForSelected;

@end
