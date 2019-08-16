# Dequer
One of the most used things in iOS development is deque UITableViewCell or UICollectionViewCell and it has some configuration. I maded an extension and protocol which initialize a cell as clean as possible.  

## Availability
for the completion handler block  used in protocol which is a closure , every **Cell class** should mark with **final** this means that can not be ovveride this class or use it as superclass and block inheritance.

## Protocol oriented
every Cell class which conforms to **Dequer** can use this code.


## Extra
inside **Cell** there is a static variable named **height**  for **UITableViewCell** and **size** for **UICollectionViewCell** which can store the default height of that cell. this one in optional and you can remove it.


## Requirements
- iOS 9.3+ 
- Swift 4.0+
>  Also fully compatible with **Swift** version **5.x**

## Integration



## Usage

Clone the project and use example project in for more.

```swift

import UIKit

final class PersonCell: UITableViewCell, Dequer {

    static var height: CGFloat = 40

    override func awakeFromNib() {
        super.awakeFromNib()

    }

}
    
```

inside UITableViewDataSource 

```swift

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return PersonCell.deque(in: tableView, at: indexPath) { (cell, row) in
        cell.textLabel?.text = \(row)
    }
}
```

### Contact

Follow and contact me on [Instagram](https://www.instagram.com/mohamadreza.codes/),  [Github](https://github.com/mohamadrezakoohkan), [LinkedIn](https://www.linkedin.com/in/mohammad-reza-koohkan-558306160/) or [stack overflow](https://stackoverflow.com/users/9706268/mohamad-reza-koohkan?tab=profile). If you find an issue [open a ticket](https://github.com/mohamadrezakoohkan/Clean-Swift-UITableViewCell/issues/new). You can send me email at mohamad_koohkan@icloud.com .

### License
CleanSwiftUITableCell is released under the [MIT license](https://github.com/mohamadrezakoohkan/Clean-Swift-UITableViewCell/blob/master/LICENSE.md).
