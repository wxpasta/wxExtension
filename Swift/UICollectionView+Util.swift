//
//  UICollectionView+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UICollectionView{
    
    
    /// register
    /// identifier = nibName
    /// - Parameter nibName:
    func register(_ nibName: String){
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        self.register(nib, forCellWithReuseIdentifier: nibName)
    }
    
    
}
