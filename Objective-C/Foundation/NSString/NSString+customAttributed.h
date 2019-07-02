//
//  NSString+customAttributed.h
//  WXCategories
//
//  Created by 巴糖 on 2019/6/21.
//  Copyright © 2019 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface NSString (customAttributed)

- (NSMutableAttributedString *(^)(NSString *, CGFloat a))nemo_appendFont;

@end

NS_ASSUME_NONNULL_END
