//
//  UIView+WXNIb.h
//  ErrorHandle
//
//  Created by 许宝吉 on 2018/11/16.
//  Copyright © 2018 许宝吉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (WXNIb)

- (nullable instancetype)wx_loadNibFirstObject;

- (nullable instancetype)wx_loadNiblastObject;

- (nullable NSArray *)wx_loadNibObject;

@end

NS_ASSUME_NONNULL_END
