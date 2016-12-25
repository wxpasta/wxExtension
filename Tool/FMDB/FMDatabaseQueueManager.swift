//
//  FMDatabaseQueueManager.swift
//
//
//  Created by 巴糖 on 2016/12/19.
//  Copyright © 2016年 巴糖. All rights reserved.
//

import UIKit

class FMDatabaseQueueManager: NSObject {
    
    class func shareManager() -> FMDatabaseQueueManager { return manager }
    var dbQueue: FMDatabaseQueue?
}

/** FMDatabaseQueue **/
extension FMDatabaseQueueManager{
    func openDBQueue(_ DBName: String) {
        let path = DBName.documentsDir()
        dbQueue = FMDatabaseQueue(path: path)
    }
    
    func closeDBQueue() {
        dbQueue?.close()
    }
    
    func createTableDBQueue(sqls: [String]){
        guard  let dbQueue = FMDatabaseQueueManager.shareManager().dbQueue else {
            return
        }
        dbQueue.inDatabase { (db) in
            for sql in sqls {
                db?.executeUpdate(sql, withArgumentsIn: nil)
            }
        }
    }
}

extension FMDatabaseQueueManager{
    fileprivate static let manager: FMDatabaseQueueManager = FMDatabaseQueueManager()
}
