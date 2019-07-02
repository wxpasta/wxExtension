//
//  UIView+WXNIb.h
//  WXCategories
//
//  Created by 巴糖 on 2018/11/16.
//  Copyright © 2018 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (WXNIb)

- (nullable instancetype)wx_loadNibFirstObject;

- (nullable instancetype)wx_loadNiblastObject;

- (nullable NSArray *)wx_loadNibObject;

@end

NS_ASSUME_NONNULL_END
