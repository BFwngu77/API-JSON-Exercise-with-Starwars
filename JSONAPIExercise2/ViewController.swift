//
//  ViewController.swift
//  JSONAPIExercise2
//
//  Created by Brett Foreman on 1/9/17.
//  Copyright © 2017 Brett Foreman. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var characterNameLbl: UILabel!
    @IBOutlet weak var characterHeightLbl: UILabel!
    @IBOutlet weak var characterWeightLbl: UILabel!
    @IBOutlet weak var characterDOBLbl: UILabel!
    @IBOutlet weak var characterGenderLbl: UILabel!
    
     var luke = Luke() // create a generic class for our class Luke, next go to viewDidLoad
    
        override func viewDidLoad() {
        super.viewDidLoad()
      
        luke.downloadLukeDetails {
            self.updateMainUI()
// use self bc it's closure...
// setup UI to load downloaded data
// create below and add the function in this viewDidLoad after
    }
}
    
    
    func updateMainUI(){
// as soon as it's done downloading the data, it will update our labels shown below...
        characterNameLbl.text = luke.characterName
        characterHeightLbl.text = "\(luke.characterHeight) \("m")"
        characterWeightLbl.text = "\(luke.characterWeight) \("Kg")"
        characterDOBLbl.text = luke.characterDOB
        characterGenderLbl.text = luke.characterGender
    }
   
}
    
