//
//  BJVerificationCode.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/11.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

class BJVerificationCode {

    /// 请求短信验证码
    ///
    /// - Parameters:
    ///   - phoneNumber: 中国+86
    ///   - finishedCallback:
    class func getChina86(phoneNumber: String, finishedCallback: @escaping (_ error: Error?) -> ()){
        SMSSDK.getVerificationCode(by: SMSGetCodeMethodSMS, phoneNumber: phoneNumber, zone: "86") { (error) in
            if error == nil
            {
                // 请求成功
                finishedCallback(nil)
            }
            else
            {
                // error
                finishedCallback(error)
            }
        }
    }
    
    /// 提交短信验
    ///
    /// - Parameters:
    ///   - code: 验证码
    ///   - phoneNumber: 中国+86
    ///   - finishedCallback:
    class func commitChina86(code: String,
                      phoneNumber: String,
                      finishedCallback: @escaping (_ error: Error?) -> ()){
        SMSSDK.commitVerificationCode(code, phoneNumber: phoneNumber, zone: "86") { (error) in
            if error == nil
            {
                // 请求成功
                finishedCallback(nil)
            }
            else
            {
                // error
                finishedCallback(error)
            }
        }
    }
    
    
}
