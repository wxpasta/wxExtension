//
//  UIImageView+AM.h
//  VRMAX
//
//  Created by AngieMita on 16/6/6.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (AM)

- (void)wx_setImageWithURLString:(NSString *)urlString;

- (void)wx_setImageWithURLString:(NSString *)urlString placeholderImageName:(NSString *)placeholder;

@end
