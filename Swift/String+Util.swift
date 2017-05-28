//
//  StringHeiper.swift
//  Test
//
//  Created by 巴糖 on 2017/5/26.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension String {

    
    var length: String.IndexDistance {
        return self.characters.count
    }
    
    var trim: String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    func isContains(s : String) -> Bool {
        return (self.range(of: s) != nil)
    }
    
}
