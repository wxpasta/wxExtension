//
//  UITabBarItem+WX.m
//  NemoOfficeClient
//
//  Created by 许宝吉 on 2018/7/27.
//  Copyright © 2018年 ainemo. All rights reserved.
//

#import "UITabBarItem+WX.h"

@implementation UITabBarItem (WX)

- (void)wx_setImageNamed:(NSString *)imageName
       selectedImageName:(NSString *)selectedImageName
             imageInsets:(UIEdgeInsets)imageInsets{
    self.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.imageInsets = imageInsets;
}

@end
