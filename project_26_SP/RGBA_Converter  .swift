import UIKit
import AVFoundation

extension UIImage {
    func getPixelColor(pos: CGPoint) -> UIColor {
        
        var pixelData = CGDataProviderCopyData(CGImageGetDataProvider(self.CGImage))
        var data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        
        var pixelInfo: Int = ((Int(self.size.width) * Int(pos.y)) + Int(pos.x)) * 4
        
        var r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
        var g = CGFloat(data[pixelInfo+1]) / CGFloat(255.0)
        var b = CGFloat(data[pixelInfo+2]) / CGFloat(255.0)
        var a = CGFloat(data[pixelInfo+3]) / CGFloat(255.0)
        
        return UIColor(red: r, green: g, blue: b, alpha: a)

    }
}
<<<<<<< HEAD
    


=======
        //Note: Algorithm used from http://www.cs.rit.edu/~ncs/color/t_convert.html
        // R, G, B, is red, green, blue
        //H is the hue, which is a value between 0-360 
        //S is the degree of strength or purity, this value is between 0-1.  
        //V is the brightness between 0-1 with 0 being no brightness (black)
        
        
        /*var min: CGFloat, max: CGFloat, delta: CGFloat
        var s: CGFloat, h: CGFloat, v: CGFloat
        
        var rgbMin: CGFloat
        var rgbMax: CGFloat
        
        rgbMin = min(r, g, b)
        rgbMax = max(r, g, b)
        
        while(true){
            if(r > g){
                rgbMax = r
            }
            else if(r > b){
                rgbMax = r
            }
            else if()
            
        }
        
        
        
        
        delta = rgbMax - rgbMin
        
        if(rgbMax != 0){
            s = delta / max
        }
        else{
            s = 0
            h = -1
            //return?
        }
        if( r == rgbMax){
            h = (g - b) / delta
        }
        else if(g == rgbMax){
            h = 2 + (b - r) / delta
        }
        else{
            h = 4 + (r - g) / delta
        }
        h *= 60
        if(h < 0){
            h += 360
        }
        return(r, g, b, h, s, v)
}*/




/*var hue = 0
        
        var rgb_min: CGFloat
        var rgb_max: CGFloat
        
        rgb_min = max(r, g, b)
        rgb_max = min(r, g, b)
        
        //If max is equal to min, set the hue to zero
        if(rgb_max == rgb_min){
            hue = 0
        }
        //If red is the max value
        else if(rgb_max == r){
            hue = (60.0 * Float(g-b) / Float(max-min))
            //hue = fmodf(hue, 360.0)
        }
        else if(rgb_max == g)
            hue = (60.0 * Float(g-b) / Float(max-min))

        
    }
}



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
}*/
>>>>>>> FETCH_HEAD
