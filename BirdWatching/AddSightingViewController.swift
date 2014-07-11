//
//  AddSightingViewController.swift
//  BirdWatching
//
//  Created by kozyty on 2014/07/09.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import Foundation
import UIKit

class AddSightingViewController : UITableViewController, UITextFieldDelegate {
    
    @IBOutlet var birdNameInput: UITextField
    @IBOutlet var locationInput: UITextField
    
    @IBOutlet var doneButton: UIBarButtonItem
    @IBOutlet var cancelButton: UIBarButtonItem
    
    var birdSighting :BirdSighting?
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        if textField == self.birdNameInput || textField == self.locationInput {
            textField.resignFirstResponder()
        }
        return true
    }
    
    @IBAction func onClickButton(sender: AnyObject) {
        if sender as NSObject == self.doneButton {
            let birdName:String = self.birdNameInput.text
            let location:String = self.locationInput.text
            self.birdSighting = BirdSighting(name:birdName, location:location, date:NSDate())
            NSLog("%@", self.birdSighting!.name)
            NSLog("%@", self.birdSighting!.location)
            NSLog("%@", self.navigationController.presentingViewController)

            var navController: UINavigationController = self.navigationController.presentingViewController as UINavigationController
            var masterController: MasterViewController = navController.topViewController as MasterViewController
            masterController.dataController.addBirdSightingWithSighting(self.birdSighting!)
            masterController.tableView.reloadData()

            self.dismissViewControllerAnimated(true, completion:{
                
                })
            
        } else if sender as NSObject == self.cancelButton {
            self.dismissViewControllerAnimated(true, completion:{})
            
        }
    }
}