//
//  String+Sandbox.swift
//
//  Created by 巴糖 on 2016/12/19.
//

import Foundation

extension String{
    /** 将当前字符串拼接到Library/Caches目录后面 **/
    func cachesDir() -> String{
        let path = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last!  as NSString
        return path.appendingPathComponent((self as NSString).lastPathComponent)
    }
    /** 将当前字符串拼接到Documents目录后面 **/
    func documentsDir() -> String
    {
        let path = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last!  as NSString
        return path.appendingPathComponent((self as NSString).lastPathComponent)
    }
    /** 将当前字符串拼接到tmp目录后面 **/
    func tmpDir() -> String
    {
        let path = NSTemporaryDirectory() as NSString
        return path.appendingPathComponent((self as NSString).lastPathComponent)
    }
}
