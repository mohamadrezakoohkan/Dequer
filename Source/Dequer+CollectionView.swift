//
//  Dequer+CollectionView.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//


import UIKit.UICollectionView

public extension Dequer where Self: UICollectionViewCell {
    
    static var height: CGFloat { return .zero }

    
    static func deque(in view: UIView,
                      at indexPath: IndexPath?,
                      reuseIdentifier id: String = Self.dequerIdentifier,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        
        guard let collectionView = view as? UICollectionView
            else { fatalError(error(view,of: UICollectionView.self)) }
        
        guard let index = indexPath else {fatalError("indexPath is nil")}
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: id, for: index) as! Self
        completion?(cell,index.row)
        return cell
    }
    
    static func register(in view: UIView,
                         nibName: String = Self.dequerIdentifier,
                         bundle: Bundle = Bundle.main,
                         reuseIdentifier id: String = Self.dequerIdentifier) {
        
        guard let collectionView = view as? UICollectionView
            else { fatalError(error(view,of: UICollectionView.self)) }
        
        let nib = UINib(nibName: nibName, bundle: bundle)
        collectionView.register(nib, forCellWithReuseIdentifier: id)
    }
    
    
}

public extension UICollectionViewCell {
    
    static var dequerIdentifier: String {
        return String(describing:  self)
    }
}


