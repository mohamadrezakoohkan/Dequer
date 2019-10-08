//
//  DequerError.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 7/1/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import Foundation

enum DequerError: String {
    
    case table = "UITableView"
    case collection = "UICollectionView"
    case tableCell = "UITableViewCell"
    case collectionCell = "UICollectionViewCell"

    
    func invalid(id: Any) -> Never {
        return fatalError("There is no \(self.rawValue) with id: \(id)")
    }
    
    static func notDequer(type: Any) -> Never {
        return fatalError("\(type) is not a Dequer")
    }
    
    static func unrelated(type: DequerError,needed: DequerError) -> Never {
        return fatalError("\(type) is not a \(type)")
    }

}
