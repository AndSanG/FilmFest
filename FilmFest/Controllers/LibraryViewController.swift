//
//  LibraryViewController.swift
//  FilmFest
//
//  Created by Andres Sanchez on 04/01/2025.
//  Copyright © 2025 Author. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController {
    @IBOutlet weak var libraryTableView: UITableView!
    @IBOutlet var dataService: MovieLibraryDataService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.libraryTableView.dataSource = dataService
        self.libraryTableView.delegate = dataService
    }
    
    

}

