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




/*extension UIImage {
    func convertRGBAtoHSV(RGB_Pixel_Data){
        struct convertRGBAtoHSV hsv
        
        CGFloat rgb_min, rgb_max
        
        
        
        
        
        
    }
    
    
}

/*
+(struct hsv_color)HSVfromRGB:(struct rgb_color)rgb
{
struct hsv_color hsv;

CGFloat rgb_min, rgb_max;
rgb_min = MIN3(rgb.r, rgb.g, rgb.b);
rgb_max = MAX3(rgb.r, rgb.g, rgb.b);

if (rgb_max == rgb_min) {
hsv.hue = 0;
} else if (rgb_max == rgb.r) {
hsv.hue = 60.0f * ((rgb.g - rgb.b) / (rgb_max - rgb_min));
hsv.hue = fmodf(hsv.hue, 360.0f);
} else if (rgb_max == rgb.g) {
hsv.hue = 60.0f * ((rgb.b - rgb.r) / (rgb_max - rgb_min)) + 120.0f;
} else if (rgb_max == rgb.b) {
hsv.hue = 60.0f * ((rgb.r - rgb.g) / (rgb_max - rgb_min)) + 240.0f;
}
hsv.val = rgb_max;
if (rgb_max == 0) {
hsv.sat = 0;
} else {
hsv.sat = 1.0 - (rgb_min / rgb_max);
}

return hsv;
}
*/

*/




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
        let green = UIImage(named: "BlackSample.png")
        
        
        
        
        //let image1 = UIImage(named: "BlackSample")
        
        let topLeft = CGPoint(x: 0, y: 0)
        
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