//
//  CameraRoll.swift
//  project_26_SP
//
//  Created by David Coles on 1/9/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//


import UIKit
import AVFoundation

struct RGB_Pixel_Data {
    var red    = 0
    var green  = 0
    var blue   = 0
}

func HsvConventer(r:CGFloat, g:CGFloat, b: CGFloat) -> (hue:CGFloat, saturation:CGFloat, value:CGFloat){
    
    
    var delta: CGFloat
    var s: CGFloat, h: CGFloat, v: CGFloat
    var rgbMin: CGFloat
    var rgbMax: CGFloat
    
    //r = 0.1953125
    //b = CGFloat(0.78432137)
    //g = CGFloat(0.3921568627)
    
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


    /*
    var sample_image = UIImage(named: "BlackSample")
    
    sample_image.contentMode = .ScaleAspectFit
    sample_image.image = image
    
    var newImage: CGImageRef = imageView.image().takeUnretainedValue()
    
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let green = UIImage(named: "sample")
        
     
        
        
        //let image1 = UIImage(named: "BlackSample")
        
        let topLeft = CGPoint(x: 55, y: 34)
        
        // Use your extension
        let greenColour = green?.getPixelColor(topLeft)
        
        // Dump RGBA values
        var redval: CGFloat = 0
        var greenval: CGFloat = 0
        var blueval: CGFloat = 0
        var alphaval: CGFloat = 0
        greenColour?.getRed(&redval, green: &greenval, blue: &blueval, alpha: &alphaval)
            //getRed(&redval, green: &greenval, blue: &blueval, alpha: &alphaval)
        
        println("Green is r: \(redval) g: \(greenval) b: \(blueval) a: \(alphaval)")
        let hsv = HsvConventer(redval, greenval, blueval)
        println("Adjusted RGB: \(redval*255) g: \(greenval*255) b: \(blueval * 255)")
        println("hue is \(hsv.hue), sat is \(hsv.saturation), value is \(hsv.value)")
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