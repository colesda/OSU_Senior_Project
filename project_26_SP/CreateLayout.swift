//
//  ViewController.swift
//  project_26_SP
//
//  Created by David Coles on 12/24/14.
//  Copyright (c) 2014 Remcho Research. All rights reserved.
//

import UIKit

class CreateLayout: UIViewController {
    
    var location = CGPoint(x: 0, y: 0)
    

    
    @IBOutlet weak var Person: UIImageView!
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var touch : UITouch! = touches.anyObject() as UITouch
        
        location = touch.locationInView(self.view)
        Person.center = location
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        var touch : UITouch! = touches.anyObject() as UITouch
        
        location = touch.locationInView(self.view)
        Person.center = location
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Person.center = CGPointMake(160, 330)
        
        println("Test Requirement #1: 'Main Menu' Loaded")
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
