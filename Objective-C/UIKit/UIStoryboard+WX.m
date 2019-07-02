//
//  UIStoryboard+WX.m
//  NemoOfficeClient
//
//  Created by 巴糖 on 2018/7/27.
//  Copyright © 2019年 ainemo. All rights reserved.
//

#import "UIStoryboard+WX.h"

@implementation UIStoryboard (WX)

+ (nullable __kindof UIViewController*)wx_storyboardInstantiateInitialViewControllerWithName:(NSString *)name{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    return storyboard.instantiateInitialViewController;
}

+ (__kindof UIViewController *)wx_storyboardInstantiateViewControllerWithName:(NSString *)name
                                                                             identifier:(NSString *)identifier{
    UIStoryboard * soryboard = [UIStoryboard storyboardWithName:name bundle:nil];
    return [soryboard instantiateViewControllerWithIdentifier:identifier];
}

@end
