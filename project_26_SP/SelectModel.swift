<<<<<<< HEAD
=======
//
//  SelectModel.swift
//  project_26_SP
//
//  Created by Admin on 2/8/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//
>>>>>>> FETCH_HEAD

import UIKit
import AVFoundation

<<<<<<< HEAD
//struct model


class SelectModel: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var sampleModel: UIButton!
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        
    }

    var items: [String] = ["Sample Model"]
=======
class SelectModel: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var sampleModel: UIButton!

    var items: [String] = ["We", "Heart", "Swift"]
>>>>>>> FETCH_HEAD
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
<<<<<<< HEAD
        cell.textLabel?.text = self.items[indexPath.row]
=======
        cell.?.text = self.sampleModel[indexPath.row]
>>>>>>> FETCH_HEAD
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
<<<<<<< HEAD
        println("Model \(indexPath.row) Selected")
        //unwindToList(segue: SampleOutput)
=======
        println("You selected cell #\(indexPath.row)!")
        
>>>>>>> FETCH_HEAD
    }
}