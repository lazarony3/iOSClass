//
//  MovieDetailsViewController.swift
//  HelloWorld
//
//  Created by Lazarony, Robert on 11/21/16.
//  Copyright © 2016 Lazarony, Robert. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.movieName.text = self.name;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
