//
//  NSArray+FPPrintChinese.h
//  WXCategories
//
//  Created by 巴糖 on 2018/10/17.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (FPPrintChinese)

- (NSString *(^)(void))ffl_description;
- (NSString *(^)(void))ffl_json;

@end

NS_ASSUME_NONNULL_END
