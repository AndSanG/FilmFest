//
//  MovieLibraryDataService.swift
//  FilmFest
//
//  Created by Andres Sanchez on 05/01/2025.
//  Copyright © 2025 Author. All rights reserved.
//

import UIKit

class MovieLibraryDataService: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var movieManager: MovieManager?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let movieManager = movieManager else {
            return 0
        }
        
        return movieManager.moviesToSeeCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 2
    }
}
