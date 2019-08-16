//
//  Dequer.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit.UIView

public protocol Dequer {

    static func deque(in view: UIView,
                      at indexPath: IndexPath?,
                       reuseIdentifier: String,
                       _ completion: ((Self,Int) -> Void)?) -> Self
    
    static func register(in view: UIView,
                         nibName: String,
                         bundle: Bundle,
                         reuseIdentifier id: String)
    
    
    static var height: CGFloat { get }
    
    static var size: CGSize { get }
}

internal func error(_ arg: Any,of type: AnyClass) -> String {
    return ("\(arg) is not a \(type)")
}


/*
 
protocol Dequer {
    
    static func deque(inCollection: UICollectionView,
                      at indexPath: IndexPath,
                      _ completion: ((Self,Int) -> Void)?) -> Self
    
    static func register(inCollection: UICollectionView)

    
    static func deque(inTable: UITableView,
                      at indexPath: IndexPath,
                      _ completion: ((Self,Int) -> Void)?) -> Self
    
    
    static func register(inTable: UITableView)

    
    static var height: CGFloat { get }
    
    static var size: CGSize { get }
}

extension UITableViewCell {
    static var identifier: String { return String(describing: self) }
}

extension UICollectionViewCell {
    static var identifier: String { return String(describing: self) }
}


extension Dequer where Self: UITableViewCell {
    
    static func register(on table: UITableView) {
        let id = Self.identifier
        let nib = UINib.init(nibName: id, bundle: Bundle.main)
        table.register(nib, forCellReuseIdentifier: id)
    }
    
    static func register(in collection: UICollectionView) {
        let id = Self.identifier
        let nib = UINib.init(nibName: id, bundle: Bundle.main)
        collection.register(nib, forCellWithReuseIdentifier: id)
    }
    
    static func deque(in collection: UICollectionView,
                      at indexPath: IndexPath,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: self.identifier,
                                                  for: indexPath)
        //        completion?(cell,indexPath.row)
        return cell as! Self
    }
    
    static func deque(on table: UITableView,
                      at indexPath: IndexPath,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        
        let cell = table.dequeueReusableCell(withIdentifier: Self.identifier) as! Self
        completion?(cell,indexPath.row)
        return cell
    }
    
}


extension Dequer where Self: UICollectionViewCell {
    
    static func register(on table: UITableView) {
        let id = Self.identifier
        let nib = UINib.init(nibName: id, bundle: Bundle.main)
        table.register(nib, forCellReuseIdentifier: id)
    }
    
    static func register(in collection: UICollectionView) {
        let id = Self.identifier
        let nib = UINib.init(nibName: id, bundle: Bundle.main)
        collection.register(nib, forCellWithReuseIdentifier: id)
    }
    
    static func deque(in collection: UICollectionView,
                      at indexPath: IndexPath,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: self.identifier,
                                                  for: indexPath) as! Self
        completion?(cell,indexPath.row)
        return cell
    }
    
    static func deque(on table: UITableView,
                      at indexPath: IndexPath,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        
        let cell = table.dequeueReusableCell(withIdentifier: Self.identifier) as! Self
        //        completion?(cell,indexPath.row)
        return cell
    }
    
}



*/



