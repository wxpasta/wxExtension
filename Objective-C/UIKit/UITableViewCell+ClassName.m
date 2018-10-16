//
//  UITableViewCell+ClassName.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/9/21.
//  Copyright © 2018年 许宝吉. All rights reserved.
//

#import "UITableViewCell+ClassName.h"

@implementation UITableViewCell (ClassName)


+ (NSString *)getCellName
{
    return NSStringFromClass([self class]);
}

@end
