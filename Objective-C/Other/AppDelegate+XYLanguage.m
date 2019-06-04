//
//  AppDelegate+XYLanguage.m
//  NemoOfficeClient
//
//  Created by 许宝吉 on 2019/6/4.
//  Copyright © 2019 ainemo. All rights reserved.
//

#import "AppDelegate+XYLanguage.h"
#import "NSBundle+XYLanguage.h"
#import "XYUserDefaultsConstant.h"


@implementation AppDelegate (XYLanguage)

- (void)setLanguage:(NSString *)language{
    [NSBundle setLanguage:language];
    [[NSUserDefaults standardUserDefaults] setObject:language
                                              forKey:XYUserDefaultsConstantAppLanguage];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


- (void)setDefaultLanguage{
    [self setLanguage:XYUserDefaultsConstantAppLanguageChineseSimplified];
}
@end
