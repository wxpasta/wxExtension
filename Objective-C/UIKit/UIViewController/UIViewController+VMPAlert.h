//
//  UIViewController+VMPAlert.h
//  vmp
//
//  Created by magic-devel on 2020/9/15.
//  Copyright © 2020 magic-devel. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (VMPAlert)

- (void)alertWithMessage:(NSString *)message  completion:(void (^ __nullable)(void))completion;

- (void)alertWithAgreement:(NSString *)message completion:(void (^ __nullable)(void))completion;

@end

NS_ASSUME_NONNULL_END
