//
//  UITabBarItem+WX.h
//  NemoOfficeClient
//
//  Created by 巴糖 on 2018/7/27.
//  Copyright © 2019年 ainemo. All rights reserved.
//

@import UIKit;

@interface UITabBarItem (WX)

/**
 设置图片相关操作

 @param imageName 图片名称
 @param selectedImageName 选中图片名称
 @param imageInsets The image inset or outset for each edge.
 */
- (void)wx_setImageNamed:(NSString *)imageName
       selectedImageName:(NSString *)selectedImageName
             imageInsets:(UIEdgeInsets)imageInsets;

@end
