//
//  UITableView+WX.m
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "UITableView+WX.h"

@implementation UITableView (WX)

- (void)wx_registerNib:(NSString *)nibname
{
    UINib *nib = [UINib nibWithNibName:nibname bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellReuseIdentifier:nibname];
}

- (void)wx_registerNibClass:(Class)customClass
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerClass:(Class)customClass
{
    [self registerClass:[customClass class] forCellReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerClassName:(NSString *)className
{
    [self registerClass:[className class] forCellReuseIdentifier:className];
}

- (void)wx_registerNib:(NSString *)nibname forCellReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:nibname bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellReuseIdentifier:identifier];
}

- (void)wx_registerNibClass:(Class)customClass forCellReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellReuseIdentifier:identifier];
}

- (void)wx_registerClassName:(NSString *)className forCellReuseIdentifier:(NSString *)identifier
{
    [self registerClass:[className class] forCellReuseIdentifier:identifier];
}


@end
