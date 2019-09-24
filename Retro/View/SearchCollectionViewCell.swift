//
//  SearchCollectionViewCell.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    var showController = ShowController()
    var show: Show? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Outlets
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var addRemoveButton: UIButton!
    
    
    // MARK: - Actions
    @IBAction func addRemoveButtonTapped(_ sender: UIButton) {
        let button = sender
        if {
            
        } else {
            
        }
        showController.createShow()
    }
    
    // MARK: - Methods
    func updateViews() {
        guard let show = show else { return }
        let posterImage = String(showImage.image)
        showImage.image = show.showImageName
    }
    
    
}
