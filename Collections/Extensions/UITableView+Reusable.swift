//
//  UITableView+Reusable.swift
//  theinnercircle
//
//  Created by Litvinskyi Denys on 07.02.2020.
//  Copyright © 2020 The Inner Circle. All rights reserved.
//

extension UITableView {
    
    func register<T: UITableViewCell>(cellType: T.Type) {
        register(cellType.nib, forCellReuseIdentifier: cellType.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(at indexPath: IndexPath, cellType: T.Type = T.self) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError(
            "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) "
            + "matching type \(cellType.self). "
            + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
            + "and that you registered the cell beforehand"
            )
        }
        
        return cell
    }
}

extension UITableViewCell: NibReusable {}
