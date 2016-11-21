//
//  ThemingViewController.swift
//  HelloWorld
//
//  Created by Lazarony, Robert on 11/7/16.
//  Copyright © 2016 Lazarony, Robert. All rights reserved.
//

import UIKit
import Foundation

class ThemingViewController: UIViewController {
    
    @IBOutlet var stepper: UIStepper!
    @IBOutlet var counter: UILabel!
    @IBOutlet var themeSwitch: UISwitch!
    
    @IBAction func showAlert () {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet() {
        //Create the AlertController
        let actionSheetController: UIAlertController = UIAlertController(title: "Please select", message: "How you would like to utilize the app?", preferredStyle: .actionSheet)
        
        //Create and add the Cancel action
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
            //Just dismiss the action sheet
        }
        actionSheetController.addAction(cancelAction)
        //Create and add first option action
        let takePictureAction: UIAlertAction = UIAlertAction(title: "Consumer", style: .default)
        { action -> Void in
            
            self.performSegue(withIdentifier: "segue_setup_customer", sender: self)
            
        }
        actionSheetController.addAction(takePictureAction)
        //Create and add a second option action
        let choosePictureAction: UIAlertAction = UIAlertAction(title: "Service provider", style: .default)
        { action -> Void in
            
            self.performSegue(withIdentifier: "segue_setup_provider", sender: self)
            
        }
        actionSheetController.addAction(choosePictureAction)
    
        //Present the AlertController
        self.present(actionSheetController, animated: true, completion: nil)
    }
    
    
    @IBAction func valueChanged() {
        let counterText: String = String(stepper.value)
        
        counter.text = "Step: " + counterText
    }
    
    @IBAction func switchThemes() {
        if(!themeSwitch.isOn){
            counter.backgroundColor = UIColor .blue
            self.view.backgroundColor = UIColor .black
        } else {
            counter.backgroundColor = UIColor .black
            self.view.backgroundColor = UIColor .white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
