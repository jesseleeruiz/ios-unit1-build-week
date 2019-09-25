//
//  Show.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

struct Show: Codable{
    var showTitle: String
    var showImageName: String
    var showBio: String
    var season: Season
    var episodeDuration: Int
    var episodeWatched: Bool
    var showWatched: Bool
    
    init(showTitle: String, showImageName: String, showBio: String, season: Season, episodeDuration: Int, episodeWatched: Bool = false, showWatched: Bool = false) {
        self.showTitle = showTitle
        self.showImageName = showImageName
        self.showBio = showBio
        self.season = season
        self.episodeDuration = episodeDuration
        self.episodeWatched = episodeWatched
        self.showWatched = showWatched
    }
}

struct Season: Codable {
    var seasonNum: Int
    var episodeCount: Int
    
    init(seasonNum: Int, episodeCount: Int) {
        self.seasonNum = seasonNum
        self.episodeCount = episodeCount
    }
}
