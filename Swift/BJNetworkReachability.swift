//
//  NetworkReachability.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/26.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation
import Alamofire

class BJNetworkReachability {
    
    class func statusChanged(){
        let manager = NetworkReachabilityManager(host: "www.apple.com")
        
        manager?.listener = { status in
            print("Network Status Changed: \(status)")
        }
        
        manager?.startListening()
    }
}


