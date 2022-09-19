//
//  TabBarViewController.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 16/09/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBarCustom()
        configureViewControllers()
    }
    
    private func configureViewControllers() {
        view.backgroundColor = .white
        let home = setUpNavigation(title: "Home", selectedImage: UIImage(systemName: "house")!, rootViewController: HomeViewController())
        let favorites = setUpNavigation(title: "Favorites", selectedImage: UIImage(systemName: "heart")!, rootViewController: FavoritesViewController())
        viewControllers = [home, favorites]
    }
    
    private func setUpNavigation(title: String, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.image = selectedImage
        navigationController.tabBarItem.title = title
        return navigationController
    }
    
    private func setUpTabBarCustom() {
        tabBar.isTranslucent = false
    }
    
}
