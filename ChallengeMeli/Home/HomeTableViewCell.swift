//
//  HomeTableViewCell.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 16/09/22.
//

import UIKit

struct CellIdentifier {
    static let homeTableViewCell = "homeTableViewCell"
}

class HomeTableViewCell: UITableViewCell {
    
    
    
    lazy var productImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        return image
    }()
    
    lazy var productTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setImageConstrains()
        setTitleLabelConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        addSubview(productImageView)
        addSubview(productTitleLabel)
    }
    
    func setImageConstrains(){
        productImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        productImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        productImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        productImageView.widthAnchor.constraint(equalTo: productImageView.heightAnchor, multiplier: 14/9).isActive = true
    }
    
    func setTitleLabelConstrains(){
        productTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        productTitleLabel.leadingAnchor.constraint(equalTo: productImageView.trailingAnchor, constant: 20).isActive = true
        productTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        productTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
        
    }
    
    func set(product: Product) {
        productImageView.image = product.image
        productTitleLabel.text = product.title
    }
}
