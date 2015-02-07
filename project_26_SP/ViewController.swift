//
//  ViewController.swift
//  project_26_SP
//
//  Created by David Coles on 12/24/14.
//  Copyright (c) 2014 Remcho Research. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("Test Requirement #1: 'Main Menu' Loaded")
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
       
        
        
        
        var r = CGFloat(0.1953125), b = CGFloat(0.78432137), g = CGFloat(0.3921568627)
        var delta: CGFloat
        var s: CGFloat, h: CGFloat, v: CGFloat
        var rgbMin: CGFloat
        var rgbMax: CGFloat
       
        rgbMin = min(r, g, b)
        rgbMax = max(r, g, b)
        delta = rgbMax - rgbMin
  
        v = rgbMax
        //s = 0.7509789
        println("r")
        if(rgbMax != 0){
            
           // s = 0.7509789
            s = delta / rgbMax
        }
        else{
            s = 0
            h = -1
            //return?
        }
        println("r")

        println("r")
        if( r == rgbMax){
            println("r")
            h = (g - b) / delta
        }
        else if(g == rgbMax){
            println("g")
            h = 2 + (b - r) / delta
        }
        else{
            println("b")
            h = 4 + (r - g) / delta
        }
        h *= 60
        if(h < 0){
            h += 360
        }
        println(r)
        println(b)
        println(g)
        println(s)
        println(h)
        println(v)
    
        
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

