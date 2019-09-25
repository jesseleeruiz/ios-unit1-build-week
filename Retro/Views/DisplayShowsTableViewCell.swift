//
//  DisplayShowsTableViewCell.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DisplayShowsTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    var showController = ShowController()
    var show: Show? {
        didSet {
            updateViews()
        }
    }
    
    

    // MARK: - Outlets
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var showTitleLabel: UILabel!
    @IBOutlet weak var seasonLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var episodeTitleLabel: UILabel!
    

    // MARK: - Actions
    @IBOutlet weak var watchedNotWatchedButton: UIButton!
    
    // MARK: - Methods
    func updateViews() {
        guard let show = show else { return }
        let imagePoster = show.showImageName
        showImage.image = UIImage(named: imagePoster)
        showTitleLabel.text = show.showTitle
        let seasonNum = String(show.season.seasonNum)
        seasonLabel.text = seasonNum
        let episodeNum = String(show.season.episodeCount)
        episodeLabel.text = episodeNum
    }
    
}
