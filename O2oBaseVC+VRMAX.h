//
//  O2oBaseVC+VRMAX.h
//  VRMAX
//
//  Created by AngieMita on 16/5/31.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "O2oBaseVC.h"

@interface O2oBaseVC (VRMAX)

- (BOOL)checkRegister;
- (BOOL)checkRegisterInNav:(UINavigationController*)nav;

- (void)registerDefaultEvent;
@end
