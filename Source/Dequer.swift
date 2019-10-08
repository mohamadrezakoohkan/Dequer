//
//  Dequer.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit.UIView

public protocol Dequer {

    /// Returns a `UICell Class` which is a `Dequer`.
    ///
    /// You should check that the given view is a `UITableViewCell` or `UICollectionViewCell`,
    /// if you pass anouther class the result will be **Compile Error**.
    ///
    /// - Parameters:
    ///   - dataSource: A `DequerDataSource`, should be a **UITableView** or **UICollectionView**
    ///   - indexPath: Another value to compare.
    ///   - reuseIdentifier: **reuseIdentifier** property of `Cell`
    ///   - completion: Closure a Dequer Cell and its row or item
    ///     - cell: `Dequer`
    ///     - row or item: `IndexPath.row`
    static func deque(in dataSource: DequerDataSource,
                      at indexPath: IndexPath,
                       reuseIdentifier: String,
                       _ completion: ((Self,Int) -> Void)?) -> Self
    
    /// Register a `UICell Class` which is a `Dequer` from a **Xib** (nib file) in main bundle.
    ///
    /// Your xib file should be inside given bundle.
    ///
    /// You should check that the given dataSource is a `UITableView` or `UICollectionView`,
    /// if you pass anouther class the result will be **Compile Error**.
    ///
    /// - Parameters:
    ///   - dataSource: A `DequerDataSource`, should be a **UITableView** or **UICollectionView**
    ///   - nibName: name of your xib file inside bundle.
    ///   - bundle: which bundle contains given nib name.
    ///   - id: **reuseIdentifier** property of `Cell`
    static func register(in dataSource: DequerDataSource,
                         nibName: String,
                         bundle: Bundle,
                         reuseIdentifier id: String)
    
    
    /// This method takes a `UICell Class` and cast the cell to a `Dequer`, and return a closure to modify cell.
    ///
    /// - Parameters:
    ///   - cell: A `DequerBindingCell`, should be a **UITableViewCell** or **UICollectionViewCell**
    ///   - bind: Closure a Dequer Cell.
    static func bind(to cell: UIView,_ bind: (Self) -> Void)
    
    
    /// Returns the height of the cell.
    static var height: CGFloat { get }
    
    /// Returns the size of the cell.
    static var size: CGSize { get }
}

