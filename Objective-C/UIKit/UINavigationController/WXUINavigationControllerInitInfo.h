//
//  WXUINavigationControllerInitInfo.h
//
//
//  Created by 巴糖 on 2018/07/20.
//  Copyright © 2019年 巴糖. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface WXUINavigationControllerInitInfo : NSObject



/** 视图控制器 */
@property (nonatomic, strong) Class viewController;

/** 导航栏标题 */
@property (nonatomic, copy) NSString *navigationTitle;

/** 导航栏图片 */
@property (nonatomic, copy) NSString *imageName;

- (instancetype)initWithViewController:(Class)viewController
                       navigationTitle:(NSString *)navigationTitle
                             imageName:(NSString *)imageName;

+ (instancetype)infoWithViewController:(Class)viewController
                       navigationTitle:(NSString *)navigationTitle
                             imageName:(NSString *)imageName;


@end

NS_ASSUME_NONNULL_END
