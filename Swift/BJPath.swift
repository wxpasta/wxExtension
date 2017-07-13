//
//  BJPath.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/26.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation

let Sandbox_Documents: String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first!

let Sandbox_Caches: String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first!


let SQLFilePath: String = Sandbox_Documents + "/db.sqlite3"
		
let LogFilePath: String = Sandbox_Caches + "/log.txt"


let Sandbox_CachePath: URL = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0]

let LogFileURL: URL = Sandbox_CachePath.appendingPathComponent("log.txt")
