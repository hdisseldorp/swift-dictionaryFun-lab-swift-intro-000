//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
  
  // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
  
  var favoriteFlavorsOfIceCream: [String: String] = [
    "Joe": "Peanut Butter and Chocolate",
    "Tim": "Natural Vanilla",
    "Sophie": "Mexican Chocolate",
    "Deniz": "Natural Vanilla",
    "Tom": "Mexican Chocolate",
    "Jim": "Natural Vanilla",
    "Susan": "Cookies 'N' Cream"
  ]
  
  
  
  // 2.
  func names(forFlavor flavor: String) -> [String] {
    var names: [String] = []
    
    for (name, ice) in favoriteFlavorsOfIceCream {
      if ice == flavor {
        names.append(name)
      }
    }
    return names
  }
  
  
  
  
  
  // 3.
  func count(forFlavor flavor: String) -> Int {
    var num = 0
    
    for (_, ice) in favoriteFlavorsOfIceCream {
      if ice == flavor {
        num += 1
      }
    }
    return num
  }

  
  
  
  
  // 4.
  func flavor(forPerson person: String) -> String? {
    if (favoriteFlavorsOfIceCream[person] != nil) {
      return favoriteFlavorsOfIceCream[person]
    }
    
    return nil
  }
  
  
  
  
  
  
  // 5.
  func replace(flavor: String, forPerson person: String) -> Bool {
    if favoriteFlavorsOfIceCream[person] != nil {
      favoriteFlavorsOfIceCream[person] = flavor
      return true
    }
    
    return false
  }
  
  
  
  
  
  
  // 6.
  func remove(person: String) -> Bool {
    if favoriteFlavorsOfIceCream[person] != nil {
      favoriteFlavorsOfIceCream[person] = nil
      return true
    }
    return false
  }
  
  
  
  
  
  
  
  // 7.
  func numberOfAttendees() -> Int {
    return favoriteFlavorsOfIceCream.count
  }
  
  
  
  
  
  
  
  // 8.
  func add(person: String, withFlavor flavor: String) -> Bool {
    if favoriteFlavorsOfIceCream[person] == nil {
      favoriteFlavorsOfIceCream[person] = flavor
      return true
    }
    return false
  }
  
  
  
  
  
  
  
  
  // 9.
  func attendeeList() -> String {
    var attendeeList: String = ""
    
    let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
    
    for name in allNames {
      attendeeList += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
      if allNames.last != name {
        attendeeList += "\n"
      }
    }
    
    return attendeeList
  }
  
  
  
  
  
  
  
  
}
