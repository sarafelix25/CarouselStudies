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
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = contentView.bounds
    }
    
    func configure(with viewModel: CollectionViewCellViewModel) {
        contentView.backgroundColor = viewModel.backGround
        label.text = viewModel.name
    }
}
