//
//  NSString+DeviceHelper.h
//  Categories
//
//  Created by magic-devel on 2020/10/29.
//  Copyright © 2020 许宝吉. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DeviceHelper)

/**
 *  获取设备名称
 *  e.g. "My iPhone"
*/
+ (NSString *) getDeviceName;

/**
 *  获取设备模型
 *  e.g. @"iPhone", @"iPod touch"
*/
+ (NSString *) getDeviceModel;

/**
 *  获取设备本地化模型
*/
+ (NSString *) getLocalizedModel;

/**
 *  获取设备系统名称
 *  e.g. @"iOS"
*/
+ (NSString *) getDeviceSystemName;

/**
 *  获取设备系统版本
 *  e.g. @"4.0"
*/
+ (NSString *) getDeviceSystemVersion;

/**
 *  获取电量
 *  e.g. @"50%"
*/
+ (NSString *) getBatteryMoniter;


@end

NS_ASSUME_NONNULL_END
