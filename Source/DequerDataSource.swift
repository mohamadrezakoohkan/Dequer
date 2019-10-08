//
//  DequerDataSource.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 7/1/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit.UIView

public protocol DequerDataSource {
    
    /// Returns **DequerDataSource** as **UICollectionView**
    var asCollection: UICollectionView { get }
    
    /// Returns **DequerDataSource** as **UITableView**
    var asTable: UITableView { get }
}

extension UITableView: DequerDataSource {
    
    public var asCollection: UICollectionView {
        DequerError.unrelated(type: .collection, needed: .table)
    }
    
    public var asTable: UITableView { self }
}

extension UICollectionView: DequerDataSource {
    
    public var asCollection: UICollectionView { self }
    
    public var asTable: UITableView {
        DequerError.unrelated(type: .table, needed: .collection)
    }
}


