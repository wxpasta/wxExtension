//
//  O2oBaseVC+VRMAX.m
//  VRMAX
//
//  Created by AngieMita on 16/5/31.
//  Copyright © 2016年 VRGATE. All rights reserved.
//

#import "O2oBaseVC+VRMAX.h"
#import "BJLoginViewController.h"
#import "BJCore.h"

@implementation O2oBaseVC (VRMAX)

- (BOOL)checkRegister
{
    return [self checkRegisterInNav:self.navigationController];
}

- (BOOL)checkRegisterInNav:(UINavigationController*)nav
{
    if([BJCore core].isRegistered)
        return YES;
    vc_before_login = self.navigationController.childViewControllers.lastObject;
    BJLoginViewController *vc = [[BJLoginViewController alloc]initWithNibName:NSStringFromClass([BJLoginViewController class]) bundle:nil];
    [nav pushViewController:vc animated:YES];
    return NO;
}

#pragma mark -
- (void)registerDefaultEvent
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    if([self respondsToSelector:@selector(onAccountChanged:)])
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onAccountChanged:) name:kEventAccountChangedNotification object:nil];
}

- (void)onAccountChanged:(NSNotification *)notification
{
    
}
@end
