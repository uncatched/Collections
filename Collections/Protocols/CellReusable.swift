//
//  CellReusable.swift
//  theinnercircle
//
//  Created by Litvinskyi Denys on 06.02.2020.
//  Copyright © 2020 The Inner Circle. All rights reserved.
//

protocol CellReusable: AnyObject {
    static var reuseIdentifier: String { get }
}

extension CellReusable {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
