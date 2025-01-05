//
//  MovieManager.swift
//  FilmFest
//
//  Created by Andres Sanchez on 04/01/2025.
//  Copyright © 2025 Author. All rights reserved.
//

import Foundation

class MovieManager{
    var moviesToSeeCount = 0
    let moviesSeenCount = 0
    private var moviesToSeeArray = [Movie]()
    func addMovie(movie: Movie){
        moviesToSeeCount += 1
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int ) -> Movie {
        return moviesToSeeArray[index]
    }
}
