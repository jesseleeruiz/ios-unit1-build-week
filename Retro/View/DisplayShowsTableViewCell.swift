//
//  DisplayShowsTableViewCell.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DisplayShowsTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var showTitleLabel: UILabel!
    @IBOutlet weak var seasonLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var episodeTitleLabel: UILabel!
    

    // MARK: - Actions
    @IBOutlet weak var watchedNotWatchedButton: UIButton!
    
}
