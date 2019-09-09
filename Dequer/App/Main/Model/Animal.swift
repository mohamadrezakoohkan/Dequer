//
//  Animal.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/26/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import Foundation


enum Animal: String,CaseIterable {
    
    case bee = "Bee"
    case cow = "Cow"
    case crab = "Crab"
    case crocodile = "Crocodile"
    case duck = "Duck"
    case fish = "Fish"
    case lizard = "Lizard"
    case octopus = "Octopus"
    case snake = "Snake"
    case tun = "Tuna"
    
    var image: String {
        return self.rawValue + "-icon"
    }
    
    static var all: [Animal] {
        return self.allCases
    }
    
}
