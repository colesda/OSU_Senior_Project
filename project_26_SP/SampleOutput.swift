//
//  CameraRoll.swift
//  project_26_SP
//
//  Created by David Coles on 1/9/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//


import UIKit
import AVFoundation

class SampleOutput: UIViewController {
    /*@IBOutlet weak var xCoord: UILabel!
    @IBOutlet weak var yCoord: UILabel!
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var blue: UILabel!
    @IBOutlet weak var redAj: UILabel!
    @IBOutlet weak var greenAj: UILabel!
    @IBOutlet weak var blueAj: UILabel!
 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
        var x = 55
        var y = 55
        //xCoord.text = "\(x)"
      //  yCoord.text = "\(y)"
        
        let testImagine = UIImage(named: "sample")
        let position = CGPoint(x: x, y: y)
        
        // Use your extension
        let colour = testImagine?.getPixelColor(position)
        
        // Dump RGBA values
        var redval: CGFloat = 0
        var greenval: CGFloat = 0
        var blueval: CGFloat = 0
        var alphaval: CGFloat = 0
        colour?.getRed(&redval, green: &greenval, blue: &blueval, alpha:&alphaval)
        
        println("Green is r: \(redval) g: \(greenval) b: \(blueval) a: \(alphaval)")
        
        let hsv = HsvConventer(redval, greenval, blueval)
        println("Adjusted RGB: \(redval*255) g: \(greenval*255) b: \(blueval * 255)")
        println("hue is \(hsv.hue), sat is \(hsv.saturation), value is \(hsv.value)")
       
        red.text = "\(redval)"
        redAj.text = "\(redval*255)"
        blue.text = "\(blueval)"
        blueAj.text = "\(blueval*255)"
        green.text = "\(greenval)"
        greenAj.text = "\(greenval*255)"
        */
        
   // }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}