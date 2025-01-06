//
//  MovieLibraryDataServiceTests.swift
//  FilmFestTests
//
//  Created by Andres Sanchez on 05/01/2025.
//  Copyright © 2025 Author. All rights reserved.
//

import XCTest

@testable import FilmFest
final class MovieLibraryDataServiceTests: XCTestCase {
    
    var sut: MovieLibraryDataService!
    var libraryTableView: UITableView!
    
    let fairyTale = Movie(title: "Fairy Tale")
    let thriller = Movie(title: "Thriller")
    let darkComedy = Movie(title: "Dark Comedy")
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MovieLibraryDataService()
        sut.movieManager = MovieManager()
        libraryTableView = UITableView()
        libraryTableView.dataSource = sut
        libraryTableView.delegate = sut
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Sections
    func testTableViewSections_Count_ReturnsTwo() {
        let sections = libraryTableView.numberOfSections
        
        XCTAssertEqual(sections, 2)
    }
    func testTableViewSections_SectionOne_ReturnsMoviesToSeeCount() {
        sut.movieManager?.addMovie(movie: fairyTale)
        sut.movieManager?.addMovie(movie: darkComedy)
        
        XCTAssertEqual(libraryTableView.numberOfRows(inSection: 0), 2)
        
        sut.movieManager?.addMovie(movie: thriller)
        libraryTableView.reloadData()
        
        XCTAssertEqual(libraryTableView.numberOfRows(inSection: 0), 3)
    }
    
}
