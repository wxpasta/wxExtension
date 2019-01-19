//
//  UICollectionView+Ex.swift
//  shaozhuang
//
//  Created by 巴糖 on 2017/12/13.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit

extension UICollectionView {

    /// Register UICollectionViewCell using class name
    /// identifier = nibName
    ///
    /// - Parameter nibName:
    func register(withClassName name: String){
        let nib = UINib(nibName: name, bundle: Bundle.main)
        self.register(nib, forCellWithReuseIdentifier: name)
    }

    /// Register UICollectionViewCell using class name
    /// identifier = nibName
    ///
    /// - Parameter name:
    public func register<T: UICollectionViewCell>(nibClass name: T.Type) {
        let className = String(describing: name)
        let nib = UINib(nibName: className, bundle: Bundle.main)
        register(nib, forCellWithReuseIdentifier: String(describing: className))
    }
    
    /// Register SectionHeader
    ///
    /// identifier = nibName
    /// - Parameter nibName:
    func register(supplementaryViewOfSectionHeaderName name: String){
        let nib = UINib(nibName: name, bundle: Bundle.main)
        self.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: name)
    }
    
    /// Register SectionFooter
    ///
    /// identifier = nibName
    /// - Parameter nibName:
    func register(supplementaryViewOfSectionFooter name: String){
        let nib = UINib(nibName: name, bundle: Bundle.main)
        self.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: name)
    }
    
    /// Register Section
    ///
    /// identifier = nibName
    /// - Parameter nibName:
    public func register<T: UICollectionReusableView>(supplementaryViewOfKind kind: String, withClass name: T.Type) {
        let className = String(describing: name)
        let nib = UINib(nibName: className, bundle: Bundle.main)
        self.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    /// Register SectionHeader
    ///
    /// identifier = nibName
    /// - Parameter nibName:
    func register<T: UICollectionReusableView>(supplementaryViewOfSectionHeader name: T.Type){
        let className = String(describing: name)
        let nib = UINib(nibName: className, bundle: Bundle.main)
        self.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: className)
    }
    
    /// Register SectionFooter
    ///
    /// identifier = nibName
    /// - Parameter nibName:
    func register<T: UICollectionReusableView>(supplementaryViewOfSectionFooter name: T.Type){
        let className = String(describing: name)
        let nib = UINib(nibName: className, bundle: Bundle.main)
        self.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: className)
    }
}
