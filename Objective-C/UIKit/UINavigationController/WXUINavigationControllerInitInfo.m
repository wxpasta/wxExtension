//
//  WXUINavigationControllerInitInfo.m
//  
//
//  Created by AngieMita on 2018/07/20.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import "WXUINavigationControllerInitInfo.h"

@implementation WXUINavigationControllerInitInfo

- (instancetype)initWithViewController:(Class)viewController
                       navigationTitle:(NSString *)navigationTitle
                             imageName:(NSString *)imageName
{
    self = [super init];
    if (self) {
        _viewController = [viewController class];
        _navigationTitle = navigationTitle;
        _imageName = imageName;
    }
    return self;
}

+ (instancetype)infoWithViewController:(Class)viewController
                       navigationTitle:(NSString *)navigationTitle
                             imageName:(NSString *)imageName
{
    return [[WXUINavigationControllerInitInfo alloc] initWithViewController:viewController
                                                            navigationTitle:navigationTitle
                                                                  imageName:imageName];
}

@end
