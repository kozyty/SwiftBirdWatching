//
//  MasterViewController.swift
//  BirdWatching
//
//  Created by kozyty on 2014/07/03.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    var dataController: BirdSightingDataController = BirdSightingDataController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.dataController = BirdSightingDataController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataController.countOfList()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("BirdSightingCell", forIndexPath: indexPath) as UITableViewCell
        
        let formatter = NSDateFormatter()
        
        if formatter == nil {
            formatter.dateStyle = .MediumStyle
        }
        
        let sightingAtIndex = self.dataController.objectInListAtIndex(indexPath.row)
        cell.textLabel.text = sightingAtIndex.name
        cell.detailTextLabel.text = formatter.stringFromDate(sightingAtIndex.date)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

