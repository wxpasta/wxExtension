//
//  UINib+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UINib{

    convenience init(nibName name: String){
      self.init(nibName: name, bundle: Bundle.main)
    }
}
