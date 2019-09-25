//
//  SearchViewController.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK: - Properties
    let showController = ShowController()
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
    }
}

    // MARK: - UICollectionViewDataSource
private let reuseIdentifier = "posterImage"

extension SearchViewController: UICollectionViewDataSource {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showController.shows.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? SearchCollectionViewCell else { return UICollectionViewCell() }
        
        let show = showController.shows[indexPath.item]
        cell.show = show
        return cell
    }
    
    
}
