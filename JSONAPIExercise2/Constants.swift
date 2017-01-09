//
//  Constants.swift
//  JSONAPIExercise2
//
//  Created by Brett Foreman on 1/9/17.
//  Copyright © 2017 Brett Foreman. All rights reserved.
//
// Constants is essential for telling us how we are going to store our URL...
import Foundation

let BASE_URL = "http://swapi.co/api/people/1/"

let LUKE_SKYWALKER_URL = BASE_URL

typealias DownloadComplete = () -> () // This will tell our function in class Luke when we are finished downloading JSON

