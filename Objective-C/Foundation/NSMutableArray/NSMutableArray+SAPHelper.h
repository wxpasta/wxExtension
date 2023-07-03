//
//  NSMutableArray+SAPHelper.h
//  SapWrappingDylib
//
//  Created by magic-devel on 2020/10/19.
//  Copyright © 2020 SAP. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableArray (SAPHelper)

/// 通过URL解析数据
+ (NSMutableDictionary *)sapDataAnalysisWithURL:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
