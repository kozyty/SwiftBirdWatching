//
//  DetailViewController.swift
//  BirdWatching
//
//  Created by kozyty on 2014/07/03.
//  Copyright (c) 2014年 nanapi Inc. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet var birdNameLabel: UILabel
    
    @IBOutlet var locationLabel: UILabel
    
    @IBOutlet var dateLabel: UILabel
    
    var sighting: BirdSighting?
    
    func configureView() {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        
        self.birdNameLabel.text = self.sighting?.name
        self.locationLabel.text = self.sighting?.location
        self.dateLabel.text = formatter.stringFromDate(sighting?.date)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

