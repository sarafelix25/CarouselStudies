//
//  ViewController.swift
//  MovieCarousel
//
//  Created by Sara Felix on 01/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CollectionTableViewCell.self, forCellReuseIdentifier: CollectionTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let viewModels: [CollectionTableViewCellViewModel] = [
        CollectionTableViewCellViewModel(viewModels: [
            CollectionViewCellViewModel(name: "The Ice Age", backGround: .systemBlue),
            CollectionViewCellViewModel(name: "The", backGround: .systemBlue),
            CollectionViewCellViewModel(name: "The Ice", backGround: .systemRed),
            CollectionViewCellViewModel(name: "The Age", backGround: .systemCyan),
            CollectionViewCellViewModel(name: "Ice Age", backGround: .systemFill),
            CollectionViewCellViewModel(name: "Age", backGround: .systemGray),
            CollectionViewCellViewModel(name: "TIA", backGround: .systemPink),
        ])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = viewModels[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else {
            fatalError()
        }
        cell.configure(with: viewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.width/2
    }
}

