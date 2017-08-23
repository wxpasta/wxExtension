//
//  UIButton+ImageName.h
//  UIButtonTest
//
//  Created by AngieMIta on 2017/8/23.
//  Copyright © 2017年 crazyit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ImageName)

/**
 设置按钮正常状态下的图片

 @param imageName 图片名称
 */
- (void)setImageNameForNormal:(NSString *)imageName;

/**
 设置按钮Hightlighted状态下的图片
 
 @param imageName 图片名称
 */
- (void)setImageNameForHightlighted:(NSString *)imageName;

/**
 设置按钮Disabled状态下的图片
 
 @param imageName 图片名称
 */
- (void)setImageNameForDisabled:(NSString *)imageName;

/**
 设置按钮Selected状态下的图片
 
 @return 图片名称
 */
- (void)setImageNameForSelected:(NSString *)imageName;





@end
