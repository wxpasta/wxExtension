# Swift 3

FMDB v2.6.2

Swift extensions 文件


FMDB<https://github.com/ccgus/fmdb>


```swfit

extension ViewController{
fileprivate func FMDB() {
let sqls = ["CREATE TABLE IF NOT EXISTS T_Person( \n" +
"id INTEGER PRIMARY KEY AUTOINCREMENT, \n" +
"name TEXT, \n" +
"age INTEGER \n" +
"); \n","CREATE TABLE IF NOT EXISTS bulktest1 (id integer primary key autoincrement, x text);"]


FMDatabaseManager.shareManager().openDB("lnj.sqlite")
FMDatabaseManager.shareManager().createTableDB(sqls: sqls)

FMDatabaseQueueManager.shareManager().openDBQueue("lnjQeye.sqlite")
FMDatabaseQueueManager.shareManager().createTableDBQueue(sqls: sqls)
}
}
```
