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
        // Pulling data into our app using Alamofire, and saving it into JSON... Which we will parse later
        
        Alamofire.request(BASE_URL).responseJSON { response in 
            let result = response.result
            
        // Every request has a response, every response has a result. We've now saved the JSON that we want...
        // Now we will begin to parse the data by creating a dictionary in which we will collect what we want and then parse it... Also, we've created a dict from above "let result"...
            
        if let dict = result.value as? Dictionary<String, Any> { // could be just "any"\
            
        // essential to know if one needs to be outside the others brackets... ie, when a dictionary is in anothers dictionary...
        // try a dict in a dict(hard) lecture 95 (6:30)
        // When hitting run after this it should show the parsed data... 
            
            //1
                if let name = dict["name"] as? String {
                    self._characterName = name.capitalized
                    print(self.characterName)                                           }
            //2
                if let height = dict["height"] as? String {
                self._characterHeight = height.capitalized
                    print(self.characterHeight)
                }
            //3
                // noticed that mass had to be in both places ...
                if let mass = dict["mass"] as? String {
                self._characterWeight = mass.capitalized
                    print(self.characterWeight)
                }
            //4
                if let birth_year = dict["birth_year"] as? String {
                self._characterDOB = birth_year.capitalized
                    print(self.characterDOB)
                }
            //5
                if let gender = dict["gender"] as? String {
                self._characterGender = gender.capitalized
                    print(self._characterGender)
                }
            //6 // test one with rooted/nested dictionary getting parsed...
            
            }
            completed() // now we need to go to main VC to call the function, so that whenever the view loads we want to load the function and make it work, using a variable. To solve this I needed to make sure it wasn't under the next bracket... it's confusing but don't follow the videos too close when making your own customized one...

        }
    }

}





