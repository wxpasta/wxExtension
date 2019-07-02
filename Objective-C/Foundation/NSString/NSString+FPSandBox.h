//
//  NSString+FPSandBox.h
//  WXCategories
//
//  Created by 巴糖 on 2018/11/14.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (FPSandBox)

// 获取沙盒根路径
+ (NSString *(^)(void))ffl_getHomePath;

// 获取tmp路径
+ (NSString *(^)(void))ffl_getTmpPath;

// 获取Documents路径
+ (NSString *(^)(void))ffl_getDocumentsPath;

// 获取Library路径
+ (NSString *(^)(void))ffl_getLibraryPath;

// 获取LibraryCache路径
+ (NSString *(^)(void))ffl_getCachePath;

@end

NS_ASSUME_NONNULL_END
