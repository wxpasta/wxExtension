//
//  NSNotificationCenter+WX.h
//  WXCategories
//
//  Created by 巴糖 on 2019/10/14.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSNotificationCenter (WX)

- (void)wx_postNotificationName:(NSNotificationName)aName;

@end

NS_ASSUME_NONNULL_END
