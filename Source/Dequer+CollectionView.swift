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

    static func deque(in dataSource: DequerDataSource,
                      at indexPath: IndexPath,
                      reuseIdentifier id: String = Self.dequerIdentifier,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {

        let cell = dataSource.asCollection.dequerCell(self, for: indexPath)
        guard let dequerCell = cell as? Self else { DequerError.notDequer(type: cell) }
        completion?(dequerCell,indexPath.row)
        return dequerCell
    }
    
    static func register(in dataSource: DequerDataSource,
                         nibName: String = Self.dequerIdentifier,
                         bundle: Bundle = Bundle.main,
                         reuseIdentifier id: String = Self.dequerIdentifier) {
        
        let nib = UINib(nibName: nibName, bundle: bundle)
        dataSource.asCollection.register(nib, forCellWithReuseIdentifier: id)
    }
    
    static func bind(to cell: UIView, _ bind: (Self) -> Void) {
        guard let dequer = cell as? Self else { DequerError.notDequer(type: cell)}
        bind(dequer)
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

