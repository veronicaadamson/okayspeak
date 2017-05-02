//
//  Exercise.swift
//  Template
//
//  Created by StreetCode Academy on 5/1/17.
//  Copyright © 2017 StreetCode. All rights reserved.
//

import Foundation
class Exercise{
    var id: String?
    var text: String?
    
    
    init(id: String, dictionary: AnyObject) {
        self.id = id
        text = dictionary.object(forKey: "text") as? String
        
        
    }
}
