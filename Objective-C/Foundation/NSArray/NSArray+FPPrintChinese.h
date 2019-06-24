//
//  NSArray+FPPrintChinese.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/10/17.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (FPPrintChinese)

- (NSString *(^)(void))ffl_description;
- (NSString *(^)(void))ffl_json;

@end

NS_ASSUME_NONNULL_END
