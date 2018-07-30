//
//  UINib+WX.m
//  xcode8New
//
//  Created by AngieMita on 16/6/22.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import "UINib+WX.h"

@implementation UINib (WX)

+ (UINib *)wx_nibWithNibName:(NSString *)name
{
   return  [UINib nibWithNibName:name bundle:[NSBundle mainBundle]];
}

+ (UINib *)wx_nibWithNibClass:(Class)customClass
{
    return  [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
}

+ (UINib *)wx_loadNib
{
    NSString *name = NSStringFromClass([self class]);
    return  [UINib nibWithNibName:name bundle:[NSBundle mainBundle]];
}
@end
