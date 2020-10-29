//
//  UIViewController+VMPAlert.m
//  vmp
//
//  Created by magic-devel on 2020/9/15.
//  Copyright © 2020 magic-devel. All rights reserved.
//

#import "UIViewController+VMPAlert.h"
#import "UIColor+Hex.h"


#pragma mark - Constant
static NSString * const kAPPConstColorSelectedBlue = @"#507EF0";
static NSString * const kAPPConstAttributedMessage = @"attributedMessage";
static NSString * const kAPPConstTitleTextColor = @"titleTextColor";
static NSString * const kUIViewControllerAlertTitle = @"";
static NSString * const kAPPConstTitleDetermine = @"确定";

static CGFloat const kUIViewControllerCornerRadius = 8.0;
static CGFloat const kUIViewControllerFontOfSize = 15.0;


#pragma mark - implementation
@implementation UIViewController (VMPAlert)

- (void)alertWithMessage:(NSString *)message completion:(void (^ __nullable)(void))completion {
    if (message.length == 0) {
        return;
    }
    //改变message的大小和颜色
    NSMutableAttributedString *messageAtt = [[NSMutableAttributedString alloc] initWithString:message];
    [messageAtt addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:kUIViewControllerFontOfSize] range:NSMakeRange(0, message.length)];
    [messageAtt addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, message.length)];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:kUIViewControllerAlertTitle
                                                                             message:message
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    [alertController setValue:messageAtt forKey:kAPPConstAttributedMessage];

    UIAlertAction *skipAction = [UIAlertAction actionWithTitle:kAPPConstTitleDetermine
                                                         style:UIAlertActionStyleCancel
                                                       handler:^(UIAlertAction * _Nonnull action) {
        completion();
    }];
    [skipAction setValue:[UIColor colorWithHexString:kAPPConstColorSelectedBlue] forKey:kAPPConstTitleTextColor];
    
    UIView *alertContentView = alertController.view.subviews.firstObject;
    alertContentView.backgroundColor = [UIColor whiteColor];
    alertContentView.layer.cornerRadius = kUIViewControllerCornerRadius;
    
    [alertController addAction:skipAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)alertWithAgreement:(NSString *)message completion:(void (^ __nullable)(void))completion {
    
    message = [NSString stringWithFormat:@"\n%@",message];
    //改变message的大小和颜色
    NSMutableParagraphStyle *paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle1.lineSpacing = 4; //增加行高
    //paragraphStyle1.paragraphSpacing = 10;  //段落后面的间距
    
    
    NSMutableAttributedString *messageAtt = [[NSMutableAttributedString alloc] initWithString:message];
    [messageAtt addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:14] range:NSMakeRange(0, message.length)];
    [messageAtt addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:@"#666666"] range:NSMakeRange(0, message.length)];
    [messageAtt addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, message.length)];
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"\n用户须知" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alertController setValue:messageAtt forKey:kAPPConstAttributedMessage];
    
//    __weak typeof(self) weakSelf = self;
    UIAlertAction *skipAction = [UIAlertAction actionWithTitle:@"同意并继续" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completion();
        
    }];
    [skipAction setValue:[UIColor colorWithHexString:kAPPConstColorSelectedBlue] forKey:kAPPConstTitleTextColor];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"不同意" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [cancelAction setValue:[UIColor colorWithHexString:@"#666666"] forKey:kAPPConstTitleTextColor];
    
    
    UIView *alertContentView = alertController.view.subviews.firstObject;
    alertContentView.backgroundColor = [UIColor whiteColor];
    alertContentView.layer.cornerRadius = 8;
    [alertController addAction:cancelAction];
    [alertController addAction:skipAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
@end
