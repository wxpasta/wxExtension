///
///   BNMacro.h
///   BJSpecificationOC
///
///   Created by 巴糖 on 2018/2/11.
///   Copyright © 2018年 巴糖. All rights reserved.
///

#ifndef BNMacro_h
#define BNMacro_h


 /** 屏幕的矩形 */
 #define kScreenRect ([UIScreen mainScreen].bounds)
 
/** 屏幕的宽度 */
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
/** 屏幕的高度 */
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
/** 屏幕的大小 */
#define kScreenSize ([UIScreen mainScreen].bounds.size)

/** 系统标准保存键值*/
#define kUserDefaults  [NSUserDefaults standardUserDefaults]

/** 弱引用 */
#define kWeakSelf(type) __weak typeof(type) weak##type = type;

/** 强引用 */
#define kStrongSelf(type) __strong typeof(type) type = weak##type;

/** 获取沙盒 Document 路径 */
#define kDocumentPath [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]

/** 获取沙盒 temp 路径(注:iPhone 重启会清空) */
#define kTempPath NSTemporaryDirectory()

/** 获取沙盒 Cache 路径 */
#define kCachePath [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]



/** 定义颜色函数 */
#define RGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]

#define RGB(a,b,c) RGBA(a,b,c,1.0)

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define kApplication [UIApplication sharedApplication]

#define kKeyWindow [UIApplication sharedApplication].keyWindow

#define kAppDelegate [UIApplication sharedApplication].delegate

#define kUserDefaults [NSUserDefaults standardUserDefaults]

#define kNotificationCenter [NSNotificationCenter defaultCenter]








#endif /* BNMacro_h */
