//
//  UIKitExtensions.swift
//
//
//  Created by 巴糖 on 2017/12/29.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import UIKit
import UIKit
import Foundation

protocol ReusableView: class {
    static var reuseIdentifier: String {get}
}

extension ReusableView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReusableView {
    
}

extension UICollectionViewCell : ReusableView{
    
}

extension UITableView {
    
    /**
     Example:
     
        let cell: UITableViewCell = tableView.dequeueReusableCell(forIndexPath: idxPath)
     
        return cell
     
     */
    public func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}

extension UICollectionView{
    
    /**
     Example:
     
        let cell: UICollectionViewCell = collectionView.dequeueReusableCell(forIndexPath: idxPath)
     
        return cell
     
     */
    public func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}

