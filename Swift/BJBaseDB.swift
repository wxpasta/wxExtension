//
//  BJBaseDB.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/6/29.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit
import SQLite

class BJBaseDB {
    
    var db: Connection!
    
    /// 判断表状态
    ///
    /// - success: 成功
    /// - fail: 失败
    /// - other: do catch
    enum BJBaseDBState {
        case success
        case fail
        case other
    }
    
    /// 插入
    ///
    /// - Parameter query: Insert
    /// - Returns: Bool
    func insert(_ query: Insert) -> BJBaseDBState {
        do {
            if try db.run(query) > 0 {
                BJPrint("insert alice")
                return .success
            } else {
                BJPrint("alice not found")
                return .other
            }
        } catch {
            BJPrint("insert failed \(error)")
            return .fail
        }
    }
    
    /// 更新
    ///
    /// - Parameter query: Update
    /// - Returns: Bool
    func update(_ query: Update) -> BJBaseDBState {
        do {
            if try db.run(query) > 0 {
                BJPrint("updated alice")
                return .success
            } else {
                BJPrint("alice not found")
                return .other
            }
        } catch {
            BJPrint("update failed \(error)")
            return .fail
        }
    }
    
    /// 删除
    ///
    /// - Parameter query: Delete
    /// - Returns: Bool
    func delete(_ query: Delete) -> BJBaseDBState {
        do {
            if try db.run(query) > 0 {
                BJPrint("deleted alice")
                return .success
            } else {
                BJPrint("alice not found")
                return .other
            }
        } catch {
            BJPrint("delete failed \(error)")
            return .fail
        }
    }
    
    /// 是否存在
    ///
    /// - Parameter query: Table
    /// - Returns: Bool
    func isExist(_ query: Table) -> BJBaseDBState {
        do {
            let result =  try db.pluck(query)
            return (result != nil) ? BJBaseDBState.success : BJBaseDBState.other
        } catch  {
            BJPrint("select failed \(error)")
            return .fail
        }
    }
    
    /// 创建表
    ///
    /// - Parameter create: Sting
    func create(_ create: String) -> BJBaseDBState{
        do {
            db = try Connection(SQLFilePath)
            try db.run(create)
            return .success
        } catch  {
            BJPrint("create failed \(error)")
            return .fail
        }
    }
    
    /// 查看数据多少条数据
    ///
    /// - Parameter tbl: Table
    /// - Returns: 条数
    func count(tbl: Table) -> Int {
        do {
            return try db.scalar(tbl.count)
        } catch {
            BJPrint(error)
        }
        return 0
    }
}
