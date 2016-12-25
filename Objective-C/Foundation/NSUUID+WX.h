//
//  NSUUID+WX.h
//  ustar
//
//  Created by 许宝吉 on 2016/10/15.
//  Copyright © 2016年 AngieMita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUUID (WX)

+ (NSString *)wx_UUIDString;

FOUNDATION_EXPORT NSString *wx_getUUIDString(void);
@end
