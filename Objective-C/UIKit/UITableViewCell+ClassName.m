//
//  UITableViewCell+ClassName.m
//  WXCategories
//
//  Created by 巴糖 on 2018/9/21.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UITableViewCell+ClassName.h"

@implementation UITableViewCell (ClassName)


+ (NSString *)getCellName
{
    return NSStringFromClass([self class]);
}

@end
