//
//  NSString+DeviceHelper.m
//  WXCategories
//
//  Created by magic-devel on 2020/10/29.
//  Copyright © 2020 许宝吉. All rights reserved.
//

#import "NSString+DeviceHelper.h"

@implementation NSString (DeviceHelper)

/**
 *  获取设备名称
 *  e.g. "My iPhone"
*/
+ (NSString *) getDeviceName {
    UIDevice *pDevice = [UIDevice currentDevice];
    NSString* deviceName = pDevice.name;
    return deviceName;
}

/**
 *  获取设备模型
 *  e.g. @"iPhone", @"iPod touch"
*/
+ (NSString *) getDeviceModel {
    UIDevice *pDevice = [UIDevice currentDevice];
    NSString* deviceModel = pDevice.model;
    return deviceModel.copy;
}

/**
 *  获取设备本地化模型
*/
+ (NSString *) getLocalizedModel {
    UIDevice *pDevice = [UIDevice currentDevice];
    NSString* deviceLocalizedModel = pDevice.localizedModel;
    return deviceLocalizedModel.copy;
}

/**
 *  获取设备系统名称
 *  e.g. @"iOS"
*/
+ (NSString *) getDeviceSystemName {
    UIDevice *pDevice = [UIDevice currentDevice];
    NSString* deviceSystemName = pDevice.systemName;
    return deviceSystemName;
}

/**
 *  获取设备系统版本
 *  e.g. @"4.0"
*/
+ (NSString *) getDeviceSystemVersion {
    UIDevice *pDevice = [UIDevice currentDevice];
    NSString* devicesystemVersion = pDevice.systemVersion;
    return devicesystemVersion;
}

/**
 *  获取电量
 */
+ (NSString *) getBatteryMoniter {
    UIDevice *device = [UIDevice currentDevice];
    device.batteryMonitoringEnabled = YES;
    float electricity = fabsf(device.batteryLevel);
    return [NSString stringWithFormat:@"%.0f%%",(CGFloat)electricity * 100];
}
@end
