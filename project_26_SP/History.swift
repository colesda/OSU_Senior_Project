//
//  History.swift
//  project_26_SP
//
//  Created by David Coles on 1/13/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//


import UIKit
import AVFoundation

class History: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var tableView: UITableView!
    var items: [String] = ["Model 0", "Model 1", "Model 3"]
    
    @IBOutlet weak var modelSelected: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Test Requirement #2: 'Take a Measurement' Loaded")
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Test \(indexPath.row) Selected")
        modelSelected.text = "Test \(indexPath.row) Selected"
        //unwindToList(segue: SampleOutput)
    }

}