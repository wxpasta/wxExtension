//
//  UserUUID.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

let request_UserUIID = UIDevice.current.identifierForVendor?.uuidString


let request_MB_Guid = UserDefaults.standard.value(forKey: "MB_Guid")


let ProGuids_Str = Pro_ProjectDB().readProSids().joined(separator: ",")


let us_userName = UserDefaults.standard.value(forKey: "vs_userName")


let us_isLogin = UserDefaults.standard.value(forKey: "vs_userIsLogin")


let us_ProId = UserDefaults.standard.value(forKey: "P_Guid")

