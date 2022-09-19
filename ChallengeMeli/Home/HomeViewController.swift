//
//  HomeViewController.swift
//  ChallengeMeli
//
//  Created by Amanda Hack  on 16/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeView = HomeView()
    var products: [Product] = []
    
    
    override func loadView() {
        view = homeView
        editNavigationController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
        setTableViewDelegates()
        products = fecthData()
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
    
    func setTableViewDelegates() {
        homeView.tableView.delegate = self
        homeView.tableView.dataSource = self
    }
    
    func registerTableView() {
        homeView.tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: CellIdentifier.homeTableViewCell)
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(DetailViewController(), animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //Aqui que vai passar os dados de uma controller para outra
    }
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.homeTableViewCell) as! HomeTableViewCell
        let product = products[indexPath.row]
        cell.set(product: product)
        return cell
    }
    
    
    
}

extension HomeViewController {
    
    func fecthData() -> [Product] {
        let item1 = Product(image: Images.bmw, title: "BMW")
        let item2 = Product(image: Images.audi, title: "Audi")
        let item3 = Product(image: Images.volvo, title: "Volvo")
        
        return [item1, item2, item3]
    }
}


/*
 - Arrumar delay nav
 - Filto
 - Popular detail
 - API
 */
