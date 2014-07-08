//
//  BirdSightingDataController.swift
//  BirdWatching
//
//  Created by kozyty on 2014/07/04.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import Foundation

class BirdSightingDataController: NSObject {

    var masterBirdSightingList: Array<BirdSighting> = Array<BirdSighting>() {
    willSet {
        if masterBirdSightingList != newValue {
            self.masterBirdSightingList = newValue
        }
    }
    }

    init() {
        super.init()
        initializeDefaultDataList()
    }
    
    func initializeDefaultDataList() -> Void {
        var sighting: BirdSighting
        var today: NSDate = NSDate()
        
        sighting = BirdSighting(name: "Pigeon", location: "EveryWhere", date: today)
        self.addBirdSightingWithSighting(sighting)
    }
    
    func addBirdSightingWithSighting(sighting:BirdSighting) {
        self.masterBirdSightingList += sighting
    }
    
    func countOfList() -> Int {
        return self.masterBirdSightingList.count
    }
    
    func objectInListAtIndex(theIndex: Int) -> BirdSighting {
        return self.masterBirdSightingList[theIndex]
    }
}