//
//  FavoritesViewController.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 16/09/22.
//

import UIKit

class FavoritesViewController: UIViewController {

    var favoritesView = FavoritesView()
    
    
    override func loadView() {
        view = favoritesView
        editNavigationController()
    }
    
    private func editNavigationController() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .systemYellow
        appearance.shadowColor = .clear
        appearance.shadowImage = UIImage()
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

}
