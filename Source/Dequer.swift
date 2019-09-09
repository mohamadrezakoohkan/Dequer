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
                      at indexPath: IndexPath,
                       reuseIdentifier: String,
                       _ completion: ((Self,Int) -> Void)?) -> Self
    
    static func register(in view: UIView,
                         nibName: String,
                         bundle: Bundle,
                         reuseIdentifier id: String)
    
    
    static func bind(to cell: UIView,_ bind: (Self) -> Void)
    
    static var height: CGFloat { get }
    
    static var size: CGSize { get }
}

internal func error(_ arg: Any,of type: AnyClass) -> String {
    return ("\(arg) is not a \(type)")
}

