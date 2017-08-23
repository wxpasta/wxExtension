//
//  UIButton+Title.h
//  UIButtonTest
//
//  Created by AngieMIta on 2017/8/23.
//  Copyright © 2017年 crazyit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Title)


/**
 * Title of normal state for button;
 * 默认状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable NSString *titleForNormal;

/**
 * Title of highlighted state for button;
 * 高亮状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable NSString *titleForHighlighted;

/**
 * Title of disabled state for button;
 * 禁用状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable NSString *titleForDisabled;

/**
 * Title of selected state for button;
 * 选中状态下按钮的文字；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable NSString *titleForSelected;

@end
