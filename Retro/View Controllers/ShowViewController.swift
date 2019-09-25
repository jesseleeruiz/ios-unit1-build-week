//
//  ShowViewController.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController, UITableViewDataSource {
    
    // MARK: - Properties
    let showController = ShowController()
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.dataSource = self
        tableView.reloadData()
    }
    
    // MARK: - METHODS
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showController.usersShows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "displayShows", for: indexPath) as? DisplayShowsTableViewCell else { return UITableViewCell() }
        
        cell.show = showController.usersShows[indexPath.row]
        return cell
    }
    
    func updateViews() {
        
    }
}
