//
//  FMDatabaseManager.swift
//
//
//  Created by 巴糖 on 2016/12/19.
//  Copyright © 2016年 巴糖. All rights reserved.
//

import UIKit

class FMDatabaseManager: NSObject {
    
    class func shareManager() -> FMDatabaseManager { return manager }
    var db: FMDatabase?
}

/** FMDatabase **/
extension FMDatabaseManager{
    func openDB(_ DBName: String) {
        let path = DBName.documentsDir()
        db = FMDatabase(path: path)  //必须手动开启open()
        if !db!.open(){
            return
        }
    }
    func closeDB() {
        db?.close()
    }
    
    func createTableDB(sqls: [String]) {
        guard  let db = FMDatabaseManager.shareManager().db else {
            return
        }
        let sql = (sqls as NSArray).componentsJoined(by: "")
        db.executeStatements(sql)
    }
}

extension FMDatabaseManager{
    fileprivate static let manager: FMDatabaseManager = FMDatabaseManager()
}
