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
                      at indexPath: IndexPath,
                      reuseIdentifier id: String = Self.dequerIdentifier,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        
        guard let collectionView = view as? UICollectionView
            else { fatalError(error(view,of: UICollectionView.self)) }
        
        
        let cell = collectionView.dequerCell(self, for: indexPath)
        
        guard let dequerCell = cell as? Self
            else { fatalError() }
        
        completion?(dequerCell,indexPath.row)
        return dequerCell
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
    
    static func bind(to cell: UIView, _ bind: (Self) -> Void) {
        bind(cell as! Self)
    }
    
    
}

public extension UICollectionViewCell {
    
    static var dequerIdentifier: String {
        return String(describing:  self)
    }
}

internal extension UICollectionView {
    
    func dequerCell(_ cell: UICollectionViewCell.Type,for indexPath: IndexPath) -> UICollectionViewCell {
        return self.dequeueReusableCell(withReuseIdentifier: cell.dequerIdentifier, for: indexPath)
    }
}

