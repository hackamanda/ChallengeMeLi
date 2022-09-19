//
//  FavoritesView.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 16/09/22.
//

import UIKit

class FavoritesView: UIView {
    
    lazy var screenLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Você não possui nenhum favorito =("
        label.textColor = .systemGray3
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpViews() {
        backgroundColor = .systemGray6
        addSubview(screenLabel)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            screenLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            screenLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
