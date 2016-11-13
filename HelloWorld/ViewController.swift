//
//  ViewController.swift
//  HelloWorld
//
//  Created by Lazarony, Robert on 11/7/16.
//  Copyright © 2016 Lazarony, Robert. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var lowerBoundFeild: UITextField!
    @IBOutlet var upperBoundFeild: UITextField!
    @IBOutlet var result: UILabel!
    
    @IBAction func generateNumber () {
        //do some stuff to generate a random number
        let upper: UInt32 = UInt32(upperBoundFeild.text!)!
        let lower: UInt32 = UInt32(lowerBoundFeild.text!)!
        let rand: String? = String(arc4random_uniform(upper - lower) + lower)

        result.text = "Result: " + rand!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lowerBoundFeild.text = "10"
        upperBoundFeild.text = "64"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

