
![Dequer is Light weight library to handle Any Cell](https://github.com/mohamadrezakoohkan/Dequer/blob/master/Dequer/Dequer.png)

# Dequer
Dequer is a light weight library to handle Any Cell

One of the most used things in iOS development is deque UITableViewCell or UICollectionViewCell and it has some configuration. I maded an extension and protocol which initialize a cell as clean as possible.  

## Availability
for the completion handler block  used in protocol which is a closure , every **Cell class** should mark with **final** this means that can not be override this class or use it as superclass and block inheritance.

## Protocol oriented
every Cell class which conforms to **Dequer** can use this code.


## Extra
inside **Cell** there is a static variable named **height**  for **UITableViewCell** and **size** for **UICollectionViewCell** which can store the default height of that cell. this one in optional and you can remove it.


## Requirements
- iOS 9.3+ 
- Swift 4.0+
>  Also fully compatible with **Swift** version **5.x**

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Dequer into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby

pod 'Dequer', :git => 'https://github.com/mohamadrezakoohkan/Dequer.git'
```

### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `Dequer` by adding the dequer package description to your `Package.swift` file:

```swift
// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    dependencies: [
        .package(url: "https://github.com/mohamadrezakoohkan/Dequer.git", from: "1.0.0"),
    ]
)
```
Then run `swift build` in Terminal to build `Dequer`.

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can use source code manually. get latest relase from [Releases](https://github.com/mohamadrezakoohkan/Dequer/releases).



## Usage

### Example project

Clone the project and use example project  for more.

#

Example of how to implement Dequer in your project.

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

Follow and contact me on [Instagram](https://www.instagram.com/mohamadreza.codes/),  [Github](https://github.com/mohamadrezakoohkan), [LinkedIn](https://www.linkedin.com/in/mohammad-reza-koohkan-558306160/) or [stack overflow](https://stackoverflow.com/users/9706268/mohamad-reza-koohkan?tab=profile). If you find an issue [open a ticket](https://github.com/mohamadrezakoohkan/Dequerissues/new). You can send me email at mohamad_koohkan@icloud.com .

### License
CleanSwiftUITableCell is released under the [MIT license](https://github.com/mohamadrezakoohkan/Dequer/blob/master/LICENSE.md).
