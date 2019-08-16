//
//  NSBundle+MyBundle.h
//  BJTestDemo
//
//  Created by 许宝吉 on 2019/4/8.
//  Copyright © 2019 许宝吉. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

#define MyLocalizedDocumentation(key, comment, chapter) \
NSLocalizedStringFromTableInBundle((key),(chapter),[NSBundle myPreferredLanguageResourcesBundle],(comment))

@interface NSBundle (MyBundle)

+ (NSBundle *) myResourcesBundle;
+ (NSBundle *) myPreferredLanguageResourcesBundle;

@end

NS_ASSUME_NONNULL_END
