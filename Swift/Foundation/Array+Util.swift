//
//  Array+Util.swift
//  Test
//
//  Created by 0547 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation


extension Bundle{
    func loadNibNamed(loadNibNamed name: String) {
        Bundle.main.loadNibNamed(name, owner: nil, options: nil)
    }
}

extension NSArray{
    convenience init?(fileName: String, ofType: String ){
        guard let path = Bundle.main.path(forResource: fileName, ofType: ofType) else {
            return nil
        }
        self.init(contentsOfFile: path)
    }
    
    func wwwww(loadNibNamed name: String) {
        Bundle.main.loadNibNamed(name, owner: nil, options: nil)
    }
}

extension NSDictionary{
    convenience init?(fileName: String, ofType: String ){
        guard let path = Bundle.main.path(forResource: fileName, ofType: ofType) else {
            return nil
        }
        self.init(contentsOfFile: path)
    }
}
