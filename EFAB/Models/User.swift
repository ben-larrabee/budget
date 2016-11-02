//
//  User.swift
//  EFAB
//
//  Created by Ben Larrabee on 11/2/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation
import Alamofire
import Freddy

class User : NetworkModel {
  var id : Int?
  var username : String?
  var password : String?
  var email : String?
  var token : String?
  var expiration : String?
  
  enum RequestType {
    case login
    case register
  }
  
  var requestType = RequestType.login
  
  required init() {
  }
  
  required init(json: JSON) throws {
    self.token = try? json.getString(at: Constants.BudgetUser.token)
    self.expiration = try? json.getString(at: Constants.BudgetUser.expirationDate)
  }
  init(username: String, password: String) {
    self.username = username
    self.password = password
    requestType = .login
  }
  init(username: String, password: String, email: String) {
    self.username = username
    self.password = password
    self.email = email
    requestType = .register
  }
  
  func method() -> Alamofire.HTTPMethod {
    return .post
  }
  
  func path() -> String {
    switch requestType {
    case .login:
      return "/auth"
    case .register:
      return "/register"
    }
  }
  
  func toDictionary() -> [String : AnyObject]? {
    var params: [String: AnyObject] = [:]
    params[Constants.BudgetUser.username] = username as AnyObject?
    params[Constants.BudgetUser.password] = password as AnyObject?
    
    switch requestType {
    case .register:
      params[Constants.BudgetUser.email] = email as AnyObject?
      break
    case .login:
      break
    }
    return params
  }
}
