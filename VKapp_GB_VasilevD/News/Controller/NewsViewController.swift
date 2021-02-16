//
//  NewsViewController.swift
//  VKapp_GB_VasilevD
//
//  Created by Денис Васильев on 28.07.2020.
//  Copyright © 2020 Denis Vasilev. All rights reserved.
//

import Foundation
import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.register(
            UINib(nibName: "NewsCell", bundle: nil),
            forCellReuseIdentifier: "NewsCell"
        )
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}

extension NewsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
}

extension NewsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as? NewsCell
        
        guard let uCell = cell else {
            print("There ara some errors with reuse cell")
            return UITableViewCell()
        }
        
        return uCell
    }
    
}
