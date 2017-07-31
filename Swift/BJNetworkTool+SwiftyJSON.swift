//
//  BJNetworkTool+SwiftyJSON.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/4.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation
import SwiftyJSON

extension BJNetworkTool{
    
    class func request(
        _ queue: DispatchQueue? = nil,
        type: MethodType,
        urlString: String,
        paramters: [String: Any]? = nil,
        finishedCallback: @escaping (_ resultArr: [[String : Any]]? , _ error: Error?) -> ()) {
        
        BJNetworkTool.request(queue,
                              type: type,
                              urlString: urlString,
                              paramters: paramters) { (result, error) in
                                if error == nil {
                                    let swiftyJsonVar = JSON(result!)
                                    let arr = swiftyJsonVar.arrayObject as! [[String : Any]]?
                                        finishedCallback(arr , nil)
                                }else{
                                    finishedCallback(nil , error)
                                }
        }
        
    }
    
    class func request(
        _ queue: DispatchQueue? = nil,
        type: MethodType,
        urlString: String,
        paramters: [String: Any]? = nil,
        finishedCallback: @escaping (_ resultDict: [String : Any]? , _ error: Error?) -> ()) {
        
        BJNetworkTool.request(queue,
                              type: type,
                              urlString: urlString,
                              paramters: paramters) { (result, error) in
                                if error == nil{
                                    let swiftyJsonVar = JSON(result!)
                                    let dict = swiftyJsonVar.dictionaryObject
                                    finishedCallback(dict , nil)
                                }else{
                                    finishedCallback(nil , error)
                                }
        }
        
    }
    
}
