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
    
    let sciFiMovie = Movie(title: "SciFi")
    let artHouseMovie = Movie(title: "Art House Drama")
    let actionMovie = Movie(title: "Action")
    
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
        sut.addMovie(movie: sciFiMovie)
        // one after add the movie to the library
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnMovieAtIndex(){
        sut.addMovie(movie: artHouseMovie)
        
        let movieQueried = sut.movieAtIndex(index: 0 )
        XCTAssertEqual(artHouseMovie.title, movieQueried.title)
    }
    
    //MARK: checking off
    // check a movie as seen
    func testCheckOffMovie_UpdateMovieManagerCounts(){
        sut.addMovie(movie: actionMovie)
        sut.checkOffMovieAtIndex(index: 0)
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    func testCheckOffMovie_RemoveMovieFromArray(){
        sut.addMovie(movie: sciFiMovie)
        sut.addMovie(movie: artHouseMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, artHouseMovie.title)
    }
    func testCheckOffMovie_ReturnMovieAtIndex(){
        sut.addMovie(movie: sciFiMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        let movieQueried = sut.checkedOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sciFiMovie.title, movieQueried.title)
    }
    
    
}
