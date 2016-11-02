//
//  Category.swift
//  EFAB
//
//  Created by Ben Larrabee on 11/2/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import Foundation
import Alamofire
import Freddy

class Category : NetworkModel {
  var id: Int?
  var name: String?
  var amount: Double?
  var startDate: String?
  var endDate: String?
  
  var searchDate: Date?
  
  enum RequestType {
    case create
    case week
    case month
  }
  var requestType = RequestType.week
  
  required init() {}
  
  required init(json: JSON) throws {
    id = try? json.getInt(at: Constants.Category.id)
    name = try? json.getString(at: Constants.Category.name)
    amount = try? json.getDouble(at: Constants.Category.amount)
  }
  
  init(name: String, amount: Double){
    self.name = name
    self.amount = amount
    self.requestType = .week
  }
  
  init(month: Date) {
    requestType = .month
    searchDate = month
  }
  
  init(week: Date) {
    requestType = .week
    searchDate = week
  }

  func method() -> Alamofire.HTTPMethod {
    switch requestType {
    case .create:
      return .post
    default:
      return .get
    }
  }
  
  func path() -> String {
    switch requestType {
    case .create:
      return "/api/category/createCategory"
    case .week:
      return "/api/category/getCategory/year/\(searchDate!.year())/month/\(searchDate!.month())/day/\(searchDate!.day())"
    case .month:
      return "/api/category/getCategory/year/\(searchDate!.year())/month/\(searchDate!.month())"
    }
  }

  func toDictionary() -> [String: AnyObject]? {
    switch requestType {
    case .create:
      let startDate = Utils.adjustedTime().toString(.iso8601(nil))
      var params: [String: AnyObject] = [:]
      params[Constants.Category.name] = name as AnyObject?
      params[Constants.Category.amount] = amount as AnyObject?
      params[Constants.Category.startDate] = startDate as AnyObject?
      
      return params
    default:
      return nil
    }
  }

}
