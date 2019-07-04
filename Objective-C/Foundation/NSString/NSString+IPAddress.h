//
//  NSString+IPAddress.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/7/4.
//  Copyright © 2019 许宝吉. All rights reserved.
//


@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (IPAddress)

+ (BOOL)isIPAddress:(NSString *)address;

+ (BOOL)isIPAddressWithPort:(NSString *)address;

@end

NS_ASSUME_NONNULL_END
