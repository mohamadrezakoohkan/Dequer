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
                      at indexPath: IndexPath? = nil,
                      reuseIdentifier id: String = Self.dequerIdentifier,
                      _ completion: ((Self,Int) -> Void)? = nil) -> Self {
        
        guard let tableView = view as? UITableView
            else { fatalError(error(view,of: UITableView.self)) }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: id) as! Self
        completion?(cell,indexPath?.row ?? 0)
        return cell
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
    
    
}

public extension UITableViewCell {
    
    static var dequerIdentifier: String {
        return String(describing:  self)
    }
}


