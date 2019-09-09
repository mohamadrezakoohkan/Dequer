//
//  Person.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import Foundation

struct Person: CustomStringConvertible {
    
    var name: String
    var age: Int
    var description: String {
        return "\(self.name) is \(self.age) years old."
    }

    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    
    static func society(numberOfPersons: Int) -> [Person] {
        var collection = [Person]()
        (0...numberOfPersons).forEach { each in
            let letters = "abcdefghijklmnopqrstuvwxyz"
            let length = Int.random(in: 3...5)
            let age = Int.random(in: 20...70)
            var name = String((0..<length).map { _ in letters.randomElement()! })
            name = name.prefix(1).uppercased() + name.lowercased().dropFirst()
            collection.append(Person.init(name: name, age: age))
        }
        return collection
    }
}
