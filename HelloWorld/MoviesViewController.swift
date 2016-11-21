//
//  ViewController.swift
//  HelloWorld
//
//  Created by Lazarony, Robert on 11/7/16.
//  Copyright © 2016 Lazarony, Robert. All rights reserved.
//

import UIKit
import Foundation

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//    var movie1: Movie = Movie()
    var names: [String] = ["Halloween", "Halloween 2", "Nightmare On Elm St."]
    var years: [String] = ["1977", "1983", "1998"]
    
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        
        cell.name?.text = names[indexPath.row]
        cell.year?.text = years[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "oneSegue", sender: names[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as! MovieDetailsViewController
        guest.name = "foo"
    }
    
}
