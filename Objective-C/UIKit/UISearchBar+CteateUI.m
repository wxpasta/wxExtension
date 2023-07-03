//
//  UISearchBar+CteateUI.m
//  WXCategories
//
//  Created by 许宝吉 on 2023/7/3.
//  Copyright © 2023 许宝吉. All rights reserved.
//

#import "UISearchBar+CteateUI.h"
#import "UIImage+ColorLump.h"

@implementation UISearchBar (CteateUI)


+ (UISearchBar *)searchBarWithBackgroundColor:(UIColor *)backgroundColor
                                        frame:(CGRect)frame
                                       radius:(CGFloat)radius {
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:frame];
    UIImage *colorImage = [UIImage cl_createImageWithColor:backgroundColor
                                                      size:searchBar.bounds.size
                                                    radius:radius];
    // UISearchBar 没有BackgroundColor，只能通过修改背景图片去实现功能
    [searchBar setSearchFieldBackgroundImage:colorImage forState:UIControlStateNormal];
    [searchBar setBackgroundImage:[UIImage new]];
    
    return searchBar;
}
@end
