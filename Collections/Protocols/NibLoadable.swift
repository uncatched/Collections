//
//  NibLoadable.swift
//  theinnercircle
//
//  Created by Litvinskyi Denys on 06.02.2020.
//  Copyright © 2020 The Inner Circle. All rights reserved.
//

protocol NibLoadable: AnyObject {
    static var nib: UINib { get }
    static var nibView: UIView { get }
}

extension NibLoadable {
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: Bundle(for: self))
    }
    
    static var nibView: UIView {
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Can't instantiate a \(self)")
        }
        
        return view
    }
}
