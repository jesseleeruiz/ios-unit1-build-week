//
//  ShowController.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ShowController {
    private(set) var usersShows: [Show] = []
    
    var shows: [Show] {
        let allShows = [Show(showTitle: "Stranger Things",
                             showImageName: "strangerThingsImage",
                             showBio: "When a young boy disappears, his mother, a police chief, and his friends must confront terrifying supernatural forces in order to get him back.",
                             season: Season(seasonNum: 3, episodeCount: 25),
                             episodeDuration: 50),
                        Show(showTitle: "Bull",
                             showImageName: "bullImage",
                             showBio: "Brilliant, brash, and charming, Dr. Bull is the ultimate puppet master as he combines psychology, human intuition, and high-tech data to learn what makes jurors, attorneys, witnesses, and the accused tick.",
                             season: Season(seasonNum: 3, episodeCount: 67),
                             episodeDuration: 45),
                        Show(showTitle: "Silicon Valley",
                             showImageName: "siliconValleyImage",
                             showBio: "Follows the struggle of Richard Hendricks, a Silicon Valley engineer trying to build his own company called Pied Piper.",
                             season: Season(seasonNum: 5, episodeCount: 46),
                             episodeDuration: 30)
        ]
        return allShows
    }
    
    func createShow() {
        for show in shows {
            usersShows.append(show)
        }
    }
    
    
    
}















