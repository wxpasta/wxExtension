#import <UIKit/UIKit.h>

@interface UICollectionView (WX)

#pragma mark - cell Identifier  is same
- (void)wx_registerNib:(NSString *)nibname;

- (void)wx_registerNibClass:(Class)customClass;

- (void)wx_registerClass:(Class)customClass;

- (void)wx_registerClassName:(NSString *)className;

- (void)wx_registerSectionHeaderNib:(NSString *)nibname;

- (void)wx_registerSectionHeaderNibClass:(Class)customClass;

- (void)wx_registerSectionHeaderClass:(Class)customClass;

- (void)wx_registerSectionHeaderClassName:(NSString *)className;

- (void)wx_registerSectionFooterNibClass:(Class)customClass;

- (void)wx_registerSectionFooterClass:(Class)customClass;

- (void)wx_registerSectionFooterClassName:(NSString *)className;

#pragma mark -
- (void)wx_registerNib:(NSString *)nibname forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerNibClass:(Class)customClass forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerClassName:(NSString *)className forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerSectionHeaderNib:(NSString *)nibname forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerSectionHeaderNibClass:(Class)customClass forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerSectionHeaderClassName:(NSString *)className forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerSectionFooterNib:(NSString *)nibname forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerSectionFooterNibClass:(Class)customClass forCellWithReuseIdentifier:(NSString *)identifier;

- (void)wx_registerSectionFooterClassName:(NSString *)className forCellWithReuseIdentifier:(NSString *)identifier;

@end
