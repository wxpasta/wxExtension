//
//  UICollectionView+Util.swift
//  Test
//
//  Created by 巴糖 on 2017/5/28.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UICollectionView{
    
    
    /// Register UICollectionViewCell using class name
    /// identifier = nibName
    /// - Parameter nibName:
    func register(_ nibName: String){
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        self.register(nib, forCellWithReuseIdentifier: nibName)
    }
    
    
    /// Register SectionHeader
    ///
    /// identifier = nibName
    /// - Parameter nibName:
    func registerSectionHeader(_ nibName: String){
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        self.register(nib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: nibName)
    }
    
    /// Register SectionFooter
    ///
    /// identifier = nibName
    /// - Parameter nibName:
    func registerSectionFooter(_ nibName: String){
        let nib = UINib(nibName: nibName, bundle: Bundle.main)
        self.register(nib, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: nibName)
    }
    
    /// SwifterSwift: Register UICollectionViewCell using class name.
    ///
    /// - Parameters:
    ///   - nib: Nib file used to create the collectionView cell.
    ///   - name: UICollectionViewCell type.
    public func register<T: UICollectionViewCell>(nib: UINib?, forCellWithClass name: T.Type) {
        register(nib, forCellWithReuseIdentifier: String(describing: name))
    }
    
    public func register<T: UICollectionViewCell>(nibClass name: T.Type) {
        let className = String(describing: name)
        let nib = UINib(nibName: className, bundle: Bundle.main)
        register(nib, forCellWithReuseIdentifier: String(describing: className))
    }
}
