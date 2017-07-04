//
//  NetworkTool.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/20.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType {
    case GET
    case POST
}

class BJNetworkTool {
    
    class func request(
        _ queue: DispatchQueue? = nil,
        type: MethodType,
        urlString: String,
        paramters: [String: Any]? = nil,
        finishedCallback: @escaping (_ result: Any? , _ error: Error?) -> ()) {
        
        // 获取类型
        let method = type == .GET ? HTTPMethod.get : HTTPMethod.post
        
        // 发送网络请求
        Alamofire.request(urlString,
                          method: method,
                          parameters: paramters)
            .responseJSON(queue: queue) { (response) in
                
                guard let result = response.result.value else {
                    #if DEBUG// 判断是否在测试环境下
                    print(response.result.error ?? "")
                    #endif
                    
                    finishedCallback(nil, response.result.error)
                    return
                }
                
                #if DEBUG// 判断是否在测试环境下
                    print("------开始------")
                    print(urlString)
                    print(paramters as Any)
                    print(result)
                    print("-------结束-----")
                    // TODO
                #else
                    // TODO
                #endif
                
                // 回调
                finishedCallback(result, nil)
        }
    }
}
