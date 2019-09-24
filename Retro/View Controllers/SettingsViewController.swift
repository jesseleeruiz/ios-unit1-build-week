//
//  SettingsViewController.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Properties
    let showController = ShowController()
    
    // MARK: - Outlets
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var monthsNum: UILabel!
    @IBOutlet weak var daysNum: UILabel!
    @IBOutlet weak var hoursNum: UILabel!
    @IBOutlet weak var numOfEpisodesWatched: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
