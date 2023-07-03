//
//  CollectionViewCell.swift
//  MovieCarousel
//
//  Created by Sara Felix on 01/07/23.
//

import UIKit

struct CollectionViewCellViewModel {
    let name: String
    let backGround: UIColor
}

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "CollectionViewCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with viewModel: CollectionViewCellViewModel) {
        contentView.backgroundColor = viewModel.backGround
    }
}
