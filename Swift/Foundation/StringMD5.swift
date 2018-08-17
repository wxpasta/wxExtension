//
//  StringMD5.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/23.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation

extension Int
{
    func hexedString() -> String
    {
        return NSString(format:"%02x", self) as String
    }
}

extension NSData
{
    func hexedString() -> String
    {
        var string = String()
        let unsafePointer = bytes.assumingMemoryBound(to: UInt8.self)
        for i in UnsafeBufferPointer<UInt8>(start:unsafePointer, count: length)
        {
            string += Int(i).hexedString()
        }
        return string
    }
}
