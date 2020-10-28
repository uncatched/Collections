//
//  UICollectionView+Reusable.swift
//  theinnercircle
//
//  Created by Litvinskyi Denys on 06.03.2020.
//  Copyright © 2020 The Inner Circle. All rights reserved.
//

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(cellType: T.Type) {
        register(cellType.nib, forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }
    
    func register<T: UICollectionReusableView>(viewType: T.Type, forKind kind: String) {
        register(viewType.nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: viewType.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(at indexPath: IndexPath, cellType: T.Type = T.self) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError(
            "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) "
            + "matching type \(cellType.self). "
            + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
            + "and that you registered the cell beforehand"
            )
        }
        
        return cell
    }
    
    func dequeueReusableView<T: UICollectionReusableView>(of kind: String, at indexPath: IndexPath, viewType: T.Type = T.self) -> T {
        guard let view = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: viewType.reuseIdentifier, for: indexPath) as? T else {
            fatalError(
            "Failed to dequeue a view with identifier \(viewType.reuseIdentifier) "
            + "matching type \(viewType.self). "
            + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
            + "and that you registered the view beforehand"
            )
        }
        
        return view
    }
}

extension UICollectionReusableView: NibReusable {}
