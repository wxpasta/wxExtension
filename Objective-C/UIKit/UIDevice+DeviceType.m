//
//  UIDevice+DeviceType.m
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import "UIDevice+DeviceType.h"

@implementation UIDevice (DeviceType)

+ (UIUserInterfaceIdiom)deviceType {
    UIUserInterfaceIdiom userInterfaceIdiom = [[UIDevice currentDevice] userInterfaceIdiom];
    return userInterfaceIdiom;
}

+ (BOOL)isPhone{
    UIUserInterfaceIdiom userInterfaceIdiom = [self deviceType];
    return  userInterfaceIdiom == UIUserInterfaceIdiomPhone;
}


+ (BOOL)isPad{
    UIUserInterfaceIdiom userInterfaceIdiom = [self deviceType];
    return  userInterfaceIdiom == UIUserInterfaceIdiomPad;
}



@end
