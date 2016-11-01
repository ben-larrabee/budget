//
//  NetworkModel.swift
//  EFAB
//
//  Created by Ben Larrabee on 10/31/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation
import Alamofire
import Freddy

// Describes what you need to make a network request and read it
protocol NetworkModel: JSONDecodable {
  // create the object by reading JSON
  init(json: JSON) throws
  // creat an empyty object
  init()
  
  //  what is the HTTP Method (Get/Post?Put?etc)
  func method() -> Alamofire.HTTPMethod
  // REST URL to the resource i.e. htttp://server.com/posts/1
  func path() -> String
  // Contert the object to a dictionary for later conversion to JSON
  func toDictionary() -> [String: AnyObject]?
}
