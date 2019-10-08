//
//  Dequer+TableView.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit.UITableView


public extension Dequer where Self: UITableViewCell {
    
    static var size: CGSize { return .zero }
    
    static func deque(in dataSource: DequerDataSource,
                      at indexPath: IndexPath,
                      reuseIdentifier id: String = Self.dequerIdentifier,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        
        let cell = dataSource.asTable.dequerCell(id: id)
        guard let dequerCell = cell as? Self else { DequerError.notDequer(type: cell)}
        completion?(dequerCell,indexPath.row)
        return dequerCell
    }
    
    static func register(in dataSource: DequerDataSource,
                         nibName: String = Self.dequerIdentifier,
                         bundle: Bundle = Bundle.main,
                         reuseIdentifier id: String = Self.dequerIdentifier) {
        
        let nib = UINib(nibName: nibName, bundle: bundle)
        dataSource.asTable.register(nib, forCellReuseIdentifier: id)
    }
    
    
    static func bind(to cell: UIView,
                     _ bind: (Self) -> Void) {
        guard let dequer = cell as? Self else { DequerError.notDequer(type: cell)}
        bind(dequer)
    }
    
}

public extension UITableViewCell {
    
    static var dequerIdentifier: String {
        return String(describing:  self)
    }
}

internal extension UITableView {
    
    func dequerCell(id: String) -> UITableViewCell {
        guard let cell = self.dequeueReusableCell(withIdentifier: id)
            else { DequerError.tableCell.invalid(id: id)}
        return cell
    }
}

