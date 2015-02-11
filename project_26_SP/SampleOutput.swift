//
//  CameraRoll.swift
//  project_26_SP
//
//  Created by David Coles on 1/9/15.
//  Copyright (c) 2015 Remcho Research. All rights reserved.
//


import UIKit
import AVFoundation

struct model {
    static var modelTest = 0
    
}


class SampleOutput: UIViewController {
    
    
    
    
    @IBOutlet weak var xCoord: UILabel!
    @IBOutlet weak var yCoord: UILabel!
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var redAj: UILabel!
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var blue: UILabel!
    @IBOutlet weak var greenAj: UILabel!
    @IBOutlet weak var blueAj: UILabel!
    
    @IBOutlet weak var hue: UILabel!
    @IBOutlet weak var saturation: UILabel!
    @IBOutlet weak var value: UILabel!
    var select = model.modelTest
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var x = 0
        var y = 0
        if(select == 0){
            x = 12
            y = 233
        }
        if(select == 1){
            x = 55
            y = 55
        }
        if(select == 2){
           x = 300
           y = 123
        }
        //model1.modelTest = 3
    
        //if(model.modelTest == 0){
        //var x = 55
        //var y = 55
        //}
        
        xCoord.text = "\(x)"
        yCoord.text = "\(y)"
        
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
        green.text = "\(greenval)"
        blue.text = "\(blueval)"
        
        redAj.text = "\(redval*255)"
        greenAj.text = "\(greenval*255)"
        blueAj.text = "\(blueval*255)"
        
        hue.text = "\(hsv.hue)"
        saturation.text = "\(hsv.saturation)"
        value.text = "\(hsv.value)"
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}