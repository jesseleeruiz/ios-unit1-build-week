//
//  SearchCollectionViewCell.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var addRemoveButtonImage: UIButton!
    
    
    
    // MARK: - Properties
    var showController = ShowController()
    var show: Show? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Actions
    @IBAction func addRemoveButtonTapped(_ sender: UIButton) {
        addRemoveButtonImage.setImage(UIImage(named: "newCheck"), for: .normal)
        guard let show = self.show else { return }
        showController.createShow(show: show.self)
        //self.showController.createShow()
        
    }
    
    
    
    // MARK: - Methods
    func updateViews() {
        guard let show = show else { return }
        showImage.image = UIImage(named: show.showImageName)
    }
    
    
}
