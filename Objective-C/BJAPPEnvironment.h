//
//  BJAPPEnvironment.h
//
//
//  Created by 巴糖 on 2018/2/2.
//  Copyright © 2018年 巴糖. All rights reserved.
//

/** APP环境 */
typedef NS_ENUM(NSUInteger, BJAPPEnvironmentType) {
    /** 无环境 */
    BJAPPEnvironmentTypeNone,
    /** 开发环境 */
    BJAPPEnvironmentTypeDevelopment,
    /** 测试环境 */
    BJAPPEnvironmentTypeTest,
    /** 生产环境 */
    BJAPPEnvironmentTypeProduction,
};


//NS_ENUM，定义状态等普通枚举
typedef NS_ENUM(NSUInteger, BJState) {
    BJStateOK = 0,
    BJStateError,
    BJStateUnknow
};

//NS_OPTIONS，定义选项
typedef NS_OPTIONS(NSUInteger, BJDirection) {
    BJDirectionNone = 0,
    BJDirectionTop = 1 << 0,
    BJDirectionLeft = 1 << 1,
    BJDirectionRight = 1 << 2,
    BJDirectionBottom = 1 << 3
};
