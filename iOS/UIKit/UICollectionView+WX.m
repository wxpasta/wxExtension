#import "UICollectionView+WX.h"

@implementation UICollectionView (WX)

#pragma mark - cell Identifier  is same
- (void)wx_registerNib:(NSString *)nibname
{
    UINib *nib = [UINib nibWithNibName:nibname bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellWithReuseIdentifier:nibname];
}

- (void)wx_registerNibClass:(Class)customClass
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellWithReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerClass:(Class)customClass
{
    [self registerClass:[customClass class] forCellWithReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerClassName:(NSString *)className
{
    [self registerClass:[className class] forCellWithReuseIdentifier:className];
}

- (void)wx_registerSectionHeaderNib:(NSString *)nibname
{
    UINib *nib = [UINib nibWithNibName:nibname bundle: [NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:nibname];
}

- (void)wx_registerSectionHeaderNibClass:(Class)customClass
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerSectionHeaderClass:(Class)customClass
{
    [self registerClass:[customClass class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerSectionHeaderClassName:(NSString *)className
{
    [self registerClass:[className class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:className];
}

- (void)wx_registerSectionFooterNibClass:(Class)customClass
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerSectionFooterClass:(Class)customClass
{
    [self registerClass:[customClass class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:NSStringFromClass([customClass class])];
}

- (void)wx_registerSectionFooterClassName:(NSString *)className
{
    [self registerClass:[className class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:className];
}

#pragma mark -
- (void)wx_registerNib:(NSString *)nibname forCellWithReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:nibname bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellWithReuseIdentifier:identifier];
}

- (void)wx_registerNibClass:(Class)customClass forCellWithReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forCellWithReuseIdentifier:identifier];
}

- (void)wx_registerClassName:(NSString *)className forCellWithReuseIdentifier:(NSString *)identifier
{
    [self registerClass:[className class] forCellWithReuseIdentifier:identifier];
}

- (void)wx_registerSectionHeaderNib:(NSString *)nibname forCellWithReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:nibname bundle: [NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:identifier];
}

- (void)wx_registerSectionHeaderNibClass:(Class)customClass forCellWithReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:identifier];
}

- (void)wx_registerSectionHeaderClassName:(NSString *)className forCellWithReuseIdentifier:(NSString *)identifier
{
    [self registerClass:[className class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:identifier];
}

- (void)wx_registerSectionFooterNib:(NSString *)nibname forCellWithReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:nibname bundle: [NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:identifier];
}

- (void)wx_registerSectionFooterNibClass:(Class)customClass forCellWithReuseIdentifier:(NSString *)identifier
{
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([customClass class]) bundle:[NSBundle mainBundle]];
    [self registerNib:nib forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:identifier];
}

- (void)wx_registerSectionFooterClassName:(NSString *)className forCellWithReuseIdentifier:(NSString *)identifier
{
    [self registerClass:[className class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:identifier];
}
@end
