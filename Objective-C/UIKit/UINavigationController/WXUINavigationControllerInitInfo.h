//
//  WXUINavigationControllerInitInfo.h
//
//
//  Created by AngieMita on 2018/07/20.
//  Copyright © 2018年 AngieMita. All rights reserved.
//

#import <UIKit/UIKit.h>

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
