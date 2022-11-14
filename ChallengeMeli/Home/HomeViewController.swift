//
//  HomeViewController.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 09/11/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView = HomeView()

    override func loadView() {
        view = homeView
        editNavigationController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonTarget()
    }
    
    func addButtonTarget(){
        homeView.OfertasButton.addTarget(self, action: #selector(navigationOfertas), for: .touchUpInside)
    }
    
    @objc func navigationOfertas(){
        let webViewController = WebKitController()
        //self.navigationController?.pushViewController(webViewController, animado: true)
        self.navigationController?.pushViewController(webViewController, animated: true)
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
        navigationItem.titleView = homeView.searchBar
    }
}
