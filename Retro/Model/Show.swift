//
//  Show.swift
//  Retro
//
//  Created by Jesse Ruiz on 9/23/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

struct Show {
    var showTitle: String
    var showImage: UIImage
    var showBio: String
    var showSeason: Season
    var showWatched: Bool
}

struct Season {
    var seasonNum: Int
    var episodeNum: Int
    var episodeTitle: String
    var episodeDuration: Int
    var episodeWatched: Bool
}
