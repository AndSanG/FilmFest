//
//  MovieManagerTests.swift
//  FilmFest
//
//  Created by Andres Sanchez on 04/01/2025.
//  Copyright © 2025 Author. All rights reserved.
//

import XCTest

@testable import FilmFest

class MovieManagerTests: XCTestCase {
    var sut: MovieManager!
    override func setUp(){
        super.setUp()
        sut = MovieManager()
    }
    override func tearDown(){
        super.tearDown()
    }
    
    //MARK: Initial values
    // keep the track of the movies we want to see
    // keep the track of the movies we have already seen
    // be sure that the variables are set to zero by default

    func testInit_MoviesToSee_ReturnZero(){
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    func testInit_MoviesSeen_ReturnZero(){
        XCTAssertEqual(sut.moviesSeenCount, 0)
        
    }
    //MARK: Add and query
    //add movies to library
    //increase the count each time
    
    func testAdd_MoviesToSee_ReturnsOne(){
        let testMovie = Movie(title: "Sci-Fi")
        sut.addMovie(movie: testMovie)
        // one after add the movie to the library
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnMovieAtIndex(){
        let testMovie = Movie(title: "Arthouse Drama")
        sut.addMovie(movie: testMovie)
        
        let movieQueried = sut.movieAtIndex(index: 0 )
        XCTAssertEqual(testMovie.title, movieQueried.title)
    }
    
}
