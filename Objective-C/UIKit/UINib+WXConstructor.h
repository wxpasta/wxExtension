//
//  UINib+WXConstructor.h
//  WXCategories
//
//  Created by 许宝吉 on 2018/11/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UINib (WXConstructor)

+ (UINib *)wx_loadNib;
+ (UINib *)wx_nibWithNibName:(NSString *)name;
+ (UINib *)wx_nibWithNibClass:(Class)customClass;

@end

NS_ASSUME_NONNULL_END
