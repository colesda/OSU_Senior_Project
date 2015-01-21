//
//  CameraRoll.swift
//  project_26_SP
//
//  Created by David Coles on 1/9/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//


import UIKit
import AVFoundation


//Create a struct containing pixel color data
struct RGB_Pixel_Data {
    var red    = 0
    var green  = 0
    var blue   = 0
}

class SamplePicture: UIViewController {
    /*
    var sample_image = UIImage(named: "BlackSample")
    
    sample_image.contentMode = .ScaleAspectFit
    sample_image.image = image
    
    var newImage: CGImageRef = imageView.image().takeUnretainedValue()
    
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    /*func getPixelColor(pos: CGPoint) -> UIColor {
        var pixelData = CGDataProviderCopyData(CGImageGetDataProvider(self.CGImage))
        var data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        
        var pixelInfo: Int = ((Int(self.size.width) * Int(pos.y)) + Int(pos.x)) * 4
        
        var r = CGFloat(data[pixelInfo])
        var g = CGFloat(data[pixelInfo+1])
        var b = CGFloat(data[pixelInfo+2])
        var a = CGFloat(data[pixelInfo+3])
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }*/
    
    
    /*
    
    var sample = UIImage(named: "BlackSample")
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //-(RGB_Pixel_Data) bitmap{
        
    
    
    
    
    
    }*/
    
    
    
    
}