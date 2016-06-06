#import <UIKit/UIKit.h>

@interface UITableView (WX)

#pragma mark - cell Identifier  is same

- (void)wx_registerNib:(NSString *)nibname;

- (void)wx_registerNibClass:(Class)customClass;

- (void)wx_registerClass:(Class)customClass;

- (void)wx_registerClassName:(NSString *)className;

#pragma mark -

- (void)wx_registerNib:(NSString *)nibname forCellReuseIdentifier:(NSString *)identifier;

- (void)wx_registerNibClass:(Class)customClass forCellReuseIdentifier:(NSString *)identifier;

- (void)wx_registerClassName:(NSString *)className forCellReuseIdentifier:(NSString *)identifier;

@end
