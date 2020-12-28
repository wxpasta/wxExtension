//
//  NSString+WifiHelper.h
//  WXCategories
//
//  Created by magic-devel on 2020/11/10.
//  Copyright © 2020 许宝吉. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (WifiHelper)

///获取ssid
+ (NSString *) getWifiName;

//获取Mac地址
+ (NSString *) getMacAddress;

@end

NS_ASSUME_NONNULL_END
