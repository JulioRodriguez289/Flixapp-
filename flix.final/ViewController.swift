//
//  ViewController.swift
//  flix.final
//
//  Created by Julio Rodriguez  on 2/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var movies = [[String:Any]]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  movies.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        let movie = movies[indexPath.row]
        
        let title = movie["title"]
        
        cell.textLabel!.text = "row: \(indexPath.row)"
        
        return cell
    }
    
    
    
    
}

