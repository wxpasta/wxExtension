//
//  UIButton+EventInterval.m
//  WXCategories
//
//  Created by 巴糖 on 2018/8/24.
//  Copyright © 2019年 巴糖. All rights reserved.
//

#import "UIButton+EventInterval.h"
@import ObjectiveC.runtime;

static char * const wx_eventTimeIntervalKey = "wx_eventTimeIntervalKey";
static char * const wx_eventUnavailableKey = "wx_eventUnavailableKey";

@interface UIButton ()

@property (nonatomic, assign) BOOL wx_eventUnavailable;

@end


@implementation UIButton (EventInterval)

+ (void)load {
    
    Method method = class_getInstanceMethod(self, @selector(addTarget:action:forControlEvents:));
    Method qi_method = class_getInstanceMethod(self, @selector(wx_addTarget:action:forControlEvents:));
    method_exchangeImplementations(method, qi_method);
}

#pragma mark - Action functions

-(void)wx_addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    if (self.wx_eventUnavailable == NO) {
        self.wx_eventUnavailable = YES;
        [self wx_addTarget:target action:action forControlEvents:controlEvents];
        [self performSelector:@selector(setWx_eventUnavailable:) withObject:@(NO) afterDelay:self.wx_eventTimeInterval];
    }
}

#pragma mark - Setter & Getter functions

- (NSTimeInterval)wx_eventTimeInterval {
    NSNumber *value = (NSNumber *)objc_getAssociatedObject(self, wx_eventTimeIntervalKey);
    return [(NSNumber *)value doubleValue];
    
}

- (void)setWx_eventTimeInterval:(NSTimeInterval)eventTimeInterval{
        objc_setAssociatedObject(self, wx_eventTimeIntervalKey, @(wx_eventTimeIntervalKey), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)wx_eventUnavailable{
    NSNumber *value = (NSNumber *) objc_getAssociatedObject(self, wx_eventUnavailableKey);
    return [value boolValue];
}

- (void)setWx_eventUnavailable:(BOOL)eventUnavailable{
        objc_setAssociatedObject(self, wx_eventUnavailableKey, @(eventUnavailable), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
