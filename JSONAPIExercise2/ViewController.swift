//
//  ViewController.swift
//  JSONAPIExercise2
//
//  Created by Brett Foreman on 1/9/17.
//  Copyright © 2017 Brett Foreman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var luke = Luke() // create a generic class for our class Luke, next go to viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        luke.downloadLukeDetails {
            // setup UI to load downloaded data
        }
    
        
    }

   


}

