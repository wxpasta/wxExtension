//
//  BJLog.swift
//  vshiMessge
//
//  Created by 0547 on 2017/6/30.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

func BJErrorPrint( _ defaultString: String, _ error: Error, file: String = #file, methodName: String = #function, lineNumber: Int = #line) {
    #if DEBUG// 判断是否在测试环境下
        // TODO
        let fileName = (file as NSString).lastPathComponent
        print("\n\(fileName)[\(lineNumber)].\(methodName):\(defaultString): \(error)")
    #else
        // TODO
    #endif
    // 回调
}

func BJPrint<T>(_ message: T, file: String = #file, methodName: String = #function, lineNumber: Int = #line){
    
    #if DEBUG // 若是Debug模式下，则打印
        let fileName = (file as NSString).lastPathComponent
        print("\n\(fileName)[\(lineNumber)].\(methodName): \(message)")
    #else
        // TODO
    #endif
}
