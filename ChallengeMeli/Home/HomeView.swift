//
//  HomeView.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 04/11/22.
//

import UIKit

class HomeView: UIView {
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = true
        searchBar.searchTextField.backgroundColor = .white
        searchBar.searchTextField.layer.masksToBounds = true
        searchBar.searchTextField.clipsToBounds = true
        searchBar.searchTextField.layer.cornerRadius = 20
        searchBar.searchTextField.font = UIFont.systemFont(ofSize: 14)
        searchBar.layer.shadowOpacity = 0.1
        searchBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        searchBar.tintColor = .black
        searchBar.placeholder = "Buscar no Mercado Livre"
        return searchBar
    }()
    
    lazy var OfertasButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Ofertas", for: .normal)
    button.setTitleColor(UIColor.white, for: .normal)
    button.backgroundColor = .systemBlue
    button.layer.cornerRadius = 6.0
    button.layer.borderWidth = 2
    button.layer.borderColor = UIColor.systemBlue.cgColor
    return button
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
        addSubview(OfertasButton)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        OfertasButton.heightAnchor.constraint(equalToConstant: 40),
        OfertasButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 40),
        OfertasButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -40),
        OfertasButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -400)])
    }
}
