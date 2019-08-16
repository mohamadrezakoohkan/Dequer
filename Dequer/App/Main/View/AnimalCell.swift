//
//  AgeCell.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit

final class AnimalCell: UICollectionViewCell,Dequer {
    
    @IBOutlet weak var imageView: UIImageView!
    
    static var size: CGSize = CGSize(width: 100, height: 100)
    
    var animal: Animal? {
        didSet {
            guard let animal = animal else {return}
            self.imageView.image = UIImage(named: animal.image)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
