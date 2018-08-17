//
//  BJLog.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/30.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

func BJPrint<T>(_ message: T,
             file: String = #file,
             methodName: String = #function,
             lineNumber: Int = #line){
    
    #if DEBUG
        // 文件名称
        let fileName = (file as NSString).lastPathComponent
        let datestr = Date().toSting()
        let consoleStr = "\(fileName)[\(lineNumber)].\(methodName): \(message)"
        print("\(datestr) \(consoleStr)\n")
    #else
        
    #endif
}

func BJLog<T>(_ message: T,
           file: String = #file,
           methodName: String = #function,
           lineNumber: Int = #line){
    // 文件名称
    let fileName = (file as NSString).lastPathComponent
    let datestr = Date().toSting()
    let consoleStr = "\(fileName)[\(lineNumber)].\(methodName): \(message)"
    //将内容同步写到文件中去（Caches文件夹下）
    appendText(fileURL: LogFileURL, string: "\(datestr) \(consoleStr)")
}

//在文件末尾追加新内容
func appendText(fileURL: URL, string: String) {
    do {
        //如果文件不存在则新建一个
        if !FileManager.default.fileExists(atPath: fileURL.path) {
            FileManager.default.createFile(atPath: fileURL.path, contents: nil)
        }
        
        let fileHandle = try FileHandle(forWritingTo: fileURL)
        let stringToWrite = "\n" + string
        
        //找到末尾位置并添加
        fileHandle.seekToEndOfFile()
        fileHandle.write(stringToWrite.data(using: String.Encoding.utf8)!)
        
    } catch let error as NSError {
        print("failed to append: \(error)")
    }
}
