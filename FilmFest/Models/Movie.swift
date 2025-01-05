//
//  Movie.swift
//  FilmFest
//
//  Created by Author on 1/15/18.
//  Copyright © 2018 Author. All rights reserved.
//

import Foundation

struct Movie {
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
