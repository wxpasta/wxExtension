//
//  SDKSettings.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/7/4.
//  Copyright © 2019 许宝吉. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface SDKSettings : NSObject

+ (SDKSettings *)sharedInstance;

/** 企业ID */
@property (nonatomic, copy) NSString *extID;

/** server地址,不设置则默认cloud.xylink.com */
@property (nonatomic, copy) NSString *serverAddress;

@end

NS_ASSUME_NONNULL_END
