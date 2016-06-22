//
//  UICollectionView+AM.h
//  VRMAX
//
//  Created by AngieMita on 16/6/20.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (AM)

- (void)wx_addHeaderForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_addFooterForCollectionWithAddTarget:(nullable id)target action:(nullable SEL)action;

- (void)wx_removeFooterForCollection;

- (void)wx_stopLoadingForCollection;

@end
