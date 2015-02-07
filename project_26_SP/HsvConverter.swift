 
 
 
 
 
 
 
 //Note: Algorithm used from http://www.cs.rit.edu/~ncs/color/t_convert.html
 // R, G, B, is red, green, blue
 //H is the hue, which is a value between 0-360
 //S is the degree of strength or purity, this value is between 0-1.
 //V is the brightness between 0-1 with 0 being no brightness (black)

 import UIKit
 import AVFoundation

 func hsvConventer(r:CGFloat, g:CGFloat, b: CGFloat) -> (hue:CGFloat, saturation:CGFloat, value:CGFloat){

    
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