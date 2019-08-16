//
//  TableVC.swift
//  Dequer
//
//  Created by Mohammad reza Koohkan on 5/25/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {
    
    lazy var persons: [Person] = [
        Person(name: "MohamadReza", age: 22),
        Person(name: "Nicki", age: 19),
        Person(name: "Martin", age: 25),
        Person(name: "John", age: 32),
        Person(name: "Steve", age: 40),
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return PersonCell.deque(in: tableView, at: indexPath) { (cell, row) in
            cell.person = self.persons[row]
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return PersonCell.height
    }

}
