//
//  NSDictionary+Serializer.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/24.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (Serializer)

- (NSData *(^)(void))jsonData;

- (NSString *(^)(void))serializer;

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

@end

NS_ASSUME_NONNULL_END
