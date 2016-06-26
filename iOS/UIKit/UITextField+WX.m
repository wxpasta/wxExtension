#import "UITextField+WX.h"

static NSString * const kTextFieldPlaceholderLabelFont = @"_placeholderLabel.font";
static NSString * const kTextFieldPlaceholderLabelTextColor = @"_placeholderLabel.textColor";


@implementation UITextField (WX)

- (void)setWx_placeHolderTextFont:(UIColor *)font
{
    [self setValue:font forKeyPath:kTextFieldPlaceholderLabelFont];
}

- (void)setWx_placeHolderTextColor:(UIColor *)color
{
    [self setValue:color forKeyPath:kTextFieldPlaceholderLabelTextColor];
}

- (UIColor *)wx_placeHolderTextColor
{
    return [self valueForKeyPath:kTextFieldPlaceholderLabelTextColor];
}

- (UIColor *)wx_placeHolderTextFont
{
    return [self valueForKeyPath:kTextFieldPlaceholderLabelFont];
}

 - (void)wx_leftViewImageName:(nonnull NSString *)imageName  width:(CGFloat)width
{
    UIImageView *iv =[UIImageView wx_imageViewWithImageName:imageName];
    iv.wx_width = width;
    iv.contentMode = UIViewContentModeCenter;
    self.leftView = iv;
    self.leftViewMode = UITextFieldViewModeAlways;
}

- (void)wx_leftViewShowText:(nonnull NSString *)text rect:(CGRect)rect
{
    UILabel *label = [[UILabel alloc]initWithFrame:rect];
    label.text = text;
    self.leftView = label;
    self.leftViewMode = UITextFieldViewModeAlways;
    
}

- (void)wx_leftViewShowRightText:(nonnull NSString *)text rect:(CGRect)rect
{
    UILabel *label = [[UILabel alloc]initWithFrame:rect];
    label.text = text;
    label.textAlignment = NSTextAlignmentRight;
    self.leftView = label;
    self.leftViewMode = UITextFieldViewModeAlways;
    
}


- (void)wx_rightViewWithImageName:(nonnull NSString *)imageName
                selectedImageName:(nonnull NSString *)selectedImageName
                            width:(CGFloat)width
                        addTarget:(nullable id)target
                           action:(SEL)action
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 40, width);
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    self.rightView = btn;
    self.rightViewMode = UITextFieldViewModeAlways;
}








@end
