//
//  BirdSighting.swift
//  BirdWatching
//
//  Created by kozyty on 2014/07/03.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import Foundation

class BirdSighting: NSObject {
    var name: String
    var location: String
    var date: NSDate
    
    init(name: String, location: String, date: NSDate) {
        self.name = name
        self.location = location
        self.date = date
    }
}

