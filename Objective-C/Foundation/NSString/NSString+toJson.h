//
//  NSString+toJson.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (toJson)

- (NSString *)nemo_convertToJsonData:(id)obj;

@end

NS_ASSUME_NONNULL_END
