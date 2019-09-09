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
    
    static func deque(in view: UIView,
                      at indexPath: IndexPath,
                      reuseIdentifier id: String = Self.dequerIdentifier,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        
        guard let tableView = view as? UITableView
            else { fatalError(error(view,of: UITableView.self)) }
        
        guard let cell = tableView.dequerCell(self)
            else { fatalError("There is no cell with id: \(id)")}
        
        guard let dequerCell = cell as? Self
            else { fatalError("Cell is not a dequer")}
        
        completion?(dequerCell,indexPath.row)
        return dequerCell
    }
    
    static func register(in view: UIView,
                         nibName: String = Self.dequerIdentifier,
                         bundle: Bundle = Bundle.main,
                         reuseIdentifier id: String = Self.dequerIdentifier) {
        
        guard let tableView = view as? UITableView
            else { fatalError(error(view,of: UITableView.self)) }
        
        let nib = UINib(nibName: nibName, bundle: bundle)
        tableView.register(nib, forCellReuseIdentifier: id)
    }
    
    
    static func bind(to cell: UIView,
                     _ bind: (Self) -> Void) {
        bind(cell as! Self)
    }
    
}

public extension UITableViewCell {
    
    static var dequerIdentifier: String {
        return String(describing:  self)
    }
}

internal extension UITableView {
    
    func dequerCell(_ cell: UITableViewCell.Type) -> UITableViewCell? {
        return self.dequeueReusableCell(withIdentifier: cell.dequerIdentifier)
    }
}

