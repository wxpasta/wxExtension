//
//  UINib+WXConstructor.m
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import "UINib+WXConstructor.h"

@implementation UINib (WXConstructor)

+ (UINib *)wx_loadNib{
    NSString *nibName = NSStringFromClass([self class]);
    return  [UINib wx_nibWithNibName:nibName];
}

+ (UINib *)wx_nibWithNibName:(NSString*)nibName{
    NSBundle *bundle = [NSBundle mainBundle];
    return  [UINib nibWithNibName:nibName bundle:bundle];
}

+ (UINib *)wx_nibWithNibClass:(Class)customClass{
    NSString *nibName = NSStringFromClass([customClass class]);
    return  [UINib wx_nibWithNibName:nibName];
}

@end
