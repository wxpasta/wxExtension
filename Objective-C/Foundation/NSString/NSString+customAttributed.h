//
//  NSString+customAttributed.h
//  WXCategories
//
//  Created by 许宝吉 on 2019/6/21.
//  Copyright © 2019 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (customAttributed)

- (NSMutableAttributedString *(^)(NSString *, CGFloat a))nemo_appendFont;

@end

NS_ASSUME_NONNULL_END
