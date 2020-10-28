//
//  HeightConfigurable.swift
//  theinnercircle
//
//  Created by Litvinskyi Denys on 10.02.2020.
//  Copyright © 2020 The Inner Circle. All rights reserved.
//

protocol HeightConfigurable {
    static var height: CGFloat { get }
}

protocol ExpandedHeightConfigurable: HeightConfigurable {
    static var expandedHeight: CGFloat { get }
}

protocol WidthConfigurable {
    static var width: CGFloat { get }
}

protocol SizeConfigurable {
    static var size: CGSize { get }
}
