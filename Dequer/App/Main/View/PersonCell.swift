//
//  NameCell.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit.UITableViewCell

final class PersonCell: UITableViewCell, Dequer {
    
    static var height: CGFloat = 40
    
    var person: Person? {
        didSet {
            self.textLabel?.text = self.person?.description
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
