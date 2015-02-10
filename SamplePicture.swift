//
//  CameraRoll.swift
//  project_26_SP
//
//  Created by David Coles on 1/9/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//


import UIKit
import AVFoundation

struct coord{
    static var xvar = 0
    static var yvar = 0
}

func HsvConventer(r:CGFloat, g:CGFloat, b: CGFloat) -> (hue:CGFloat, saturation:CGFloat, value:CGFloat){
    
    
    var delta: CGFloat
    var s: CGFloat, h: CGFloat, v: CGFloat
    var rgbMin: CGFloat
    var rgbMax: CGFloat
    
    //r = 0.1953125
    //b = CGFloat(0.78432137)
    //g = CGFloat(0.3921568627)
    var a = 5
    rgbMin = min(r, g, b)
    rgbMax = max(r, g, b)
    delta = rgbMax - rgbMin
    v = rgbMax
    
    if(rgbMax != 0){
        s = delta / rgbMax
    }
    else{
        s = 0
        h = -1
        //return?
    }
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
    return(CGFloat(h), CGFloat(s), CGFloat(v))
}





class SamplePicture: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        coord.xvar = 3
        
        
        
        
        
        
    }
    
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}