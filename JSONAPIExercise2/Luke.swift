//
//  Luke.swift
//  JSONAPIExercise2
//
//  Created by Brett Foreman on 1/9/17.
//  Copyright © 2017 Brett Foreman. All rights reserved.
//

import UIKit
import Alamofire

class Luke {
    var _characterName: String!
    var _characterHeight: String!
    var _characterWeight: String!
    var _characterDOB: String!
    var _characterGender: String!
    
    // Data Encapsulation //
    
    var characterName: String {
        if _characterName == nil {
            _characterName = ""
        }
        return _characterName
    }
    
    var characterHeight: String {
        if _characterHeight == nil {
            _characterHeight = ""
        }
        return _characterHeight
    }
    
    var characterWeight: String {
        if _characterWeight == nil {
            _characterWeight = ""
        }
        return _characterWeight
    }
    
    var characterDOB: String {
        if _characterDOB == nil {
            _characterDOB = ""
        }
        return _characterDOB
    }
    
    var characterGender: String {
        if _characterGender == nil {
            _characterGender = ""
        }
        return _characterGender
    }
                                            // add download complete to constants folder 
    func downloadLukeDetails(completed: @escaping DownloadComplete) {
        //initialize the URL to tell Alamofire where to download from...
        // git request
        // after we request it we want to give it a response...
        Alamofire.request(BASE_URL).responseJSON { response in 
            let result = response.result // every request has a response, every response has a result. We've now saved the JSON that we want...
            print(response)
        }
        completed() // now we need to go to main VC to call the function, so that whenever the view loads we want to load the function and make it work, using a variable.  
    }


}
