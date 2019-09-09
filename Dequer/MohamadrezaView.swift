//
//  MohamadrezaView.swift
//  CleanSwiftTableCell
//
//  Created by Mohammad reza Koohkan on 5/1/1398 AP.
//  Copyright © 1398 AP Apple Code. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
class MohamadrezaView: UIView {
    
    private let spacing: CGFloat = 20
    private let itemsHeight: CGFloat = 45
    
    private lazy var selecotor = #selector(self.tappedIn(_:))
    private lazy var buttons: [Button] = [
        self.github,
        self.stackoverflow,
        self.instagram,
        self.linkedIn
    ]
    
    fileprivate lazy var github: Button = {
        return Button.make(of: .github,target: self,selector: self.selecotor)
    }()
    
    fileprivate lazy var instagram: Button = {
        return Button.make(of: .instagram,target: self,selector: self.selecotor)
    }()
    
    fileprivate lazy var linkedIn: Button = {
        return Button.make(of: .linkedIn,target: self,selector: self.selecotor)
    }()
    
    fileprivate lazy var stackoverflow: Button = {
        return Button.make(of: .stackoverflow,target: self,selector: self.selecotor)
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: self.buttons)
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.frame.size.height = self.itemsHeight
        stack.spacing = self.spacing
        return stack
    }()
    
    @objc fileprivate func tappedIn(_ sender: Button) {
        sender.open()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addSubview(self.stackView)
        self.addConstaints()
    }
    
    func addConstaints() {
        let count = CGFloat(self.buttons.count)
        let itemsWidth = self.itemsHeight * count
        let spaceWidth = self.spacing * (count - 1)
        let width = itemsWidth + spaceWidth
        let height = self.itemsHeight
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        let layouts = [
            self.stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.stackView.widthAnchor.constraint(equalToConstant: width),
            self.stackView.heightAnchor.constraint(equalToConstant: height)
        ]
        layouts.forEach { $0.isActive = true}
    }
}

fileprivate class Button: UIButton {
    
    var kind: Button.Kind = .github
    
    enum Kind {
        case instagram,
        github,
        linkedIn,
        stackoverflow
        
        var image: UIImage {
            switch self {
            case .github: return #imageLiteral(resourceName: "github-logo")
            case .instagram: return #imageLiteral(resourceName: "instagram-logo")
            case .linkedIn: return #imageLiteral(resourceName: "linkedin-logo")
            case .stackoverflow: return #imageLiteral(resourceName: "stackoverflow-logo")
            }
        }
        
        var url: URL {
            switch self {
            case .github:
                return URL.init(string: "https://github.com/mohamadrezakoohkan")!
            case .instagram:
                return URL.init(string: "https://www.instagram.com/mohamadreza.codes/")!
            case .linkedIn:
                return URL.init(string: "https://www.linkedin.com/in/mohammad-reza-koohkan-558306160/")!
            case .stackoverflow:
                return URL.init(string: "https://stackoverflow.com/users/9706268/mohamad-reza-koohkan?tab=profile")!
            }
        }
    }
    
    static func make(of kind: Button.Kind,target: Any?,selector: Selector) -> Button {
        let button = Button.init()
        button.frame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
        button.tintColor = UIColor.white
        button.setImage(kind.image, for: .normal)
        button.addTarget(target, action: selector, for: .touchUpInside)
        button.kind = kind
        return button
    }
    
    func open() {
        let url = self.kind.url
        guard UIApplication.shared.canOpenURL(url) else {return}
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
}



