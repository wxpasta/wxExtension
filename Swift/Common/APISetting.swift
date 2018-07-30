//
//  APISetting.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/23.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation

let BJConnectionURL0 =  "Total/Post?apiWhich="
let BJConnectionURL1 =  "Total/Postx?apiWhich="

class APISetting {
    
    var baseURL: String!
    var baseWebURL: String!
    var baseImageURL: String!
    
    init() {
        baseURL = devAPIURL().baseURL
        baseWebURL = devAPIURL().baseWebURL
        baseImageURL = devAPIURL().baseImageURL
    }
}

class prodAPIURL {
    let baseURL      = "http://gapi.veishi.com/api/"
    let baseWebURL  = "http://msg.veishi.com/"
    let baseImageURL = "http://file.veishi.com/"
}

class testAPIURL {
    let baseURL  = "http://apitest.veishi.com/api/"
    let baseWebURL  = "http://msgtest.veishi.com/"
    let baseImageURL = "http://filetest.veishi.com/"
}

class devAPIURL {
    let baseURL      = "http://192.168.1.65:8252/api/"
    let baseWebURL  = "http://192.168.1.65:5001/"
    let baseImageURL = "http://192.168.1.65:8902/"
}
