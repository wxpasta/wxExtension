//
//  UINib+WX.h
//  xcode8New
//
//  Created by AngieMita on 16/6/22.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINib (WX)


+ (UINib *)wx_nibWithNibName:(NSString *)name;
+ (UINib *)wx_nibWithNibClass:(Class)customClass;

@end
