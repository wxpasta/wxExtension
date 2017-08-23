//
//  UIButton+Image.h
//  UIButtonTest
//
//  Created by AngieMIta on 2017/8/23.
//  Copyright © 2017年 crazyit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Image)

/**
 * Image of normal state for button;
 * 默认状态下按钮的图片；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIImage *imageForNormal;

/**
 * Image of highlighted state for button;
 * 高亮状态下按钮的图片；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIImage *imageForHighlighted;

/**
 * Image of disabled state for button;
 * 禁用状态下按钮的图片；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIImage *imageForDisabled;

/**
 * Image of selected state for button;
 * 选中状态下按钮的图片；
 * also inspectable from Storyboard.
 * 可在nib(xib) Storyboard 中使用。
 */
@property(nonatomic, strong) IBInspectable UIImage *imageForSelected;


@end
