//
//  DetailViewController.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 04/11/22.
//

import UIKit

class DetailViewController: UIViewController {

    var detailView = DetailView()
    
    override func loadView() {
        view = detailView
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
