//
//  ViewController.swift
//  iOSTZ
//
//  Created by Дмитрий Трушин on 03/03/2025.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    private let titleLabel = UILabel()
    private let searchBar = UISearchBar()
    private let tableView = UITableView()
//    private let footerView = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        addSubView()
        setupConstraints()
        
//        NetworkManager.instance.getTodos { result in
//            switch result {
//            case .success(let success):
//                print(success)
//            case .failure(let failure):
//                print(failure)
//            }
//        }
    }
    
    private func addSubView() {
        view.addSubViews(titleLabel, searchBar, tableView)
    }
    
    private func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            searchBar.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 16),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }

    private func setupUI() {
        view.backgroundColor = .systemBlue

        titleLabel.text = "Задачи"
        titleLabel.textColor = .white
        titleLabel.font = .boldSystemFont(ofSize: 34)
        
        searchBar.placeholder = "Search"
        searchBar.searchBarStyle = .minimal
        if let textField = searchBar.value(forKey: "searchField") as? UITextField {
            textField.backgroundColor = UIColor.darkGray
            textField.layer.cornerRadius = 12
            textField.clipsToBounds = true
            textField.textColor = .white
            if let leftView = textField.leftView as? UIImageView {
                leftView.tintColor = .lightGray
            }
        }
        searchBar.delegate = self
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
    
    
}


