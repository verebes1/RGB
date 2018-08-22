//
//  ViewController.swift
//  RGB
//
//  Created by verebes on 21/08/2018.
//  Copyright © 2018 A&D Progress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    var red: Float = 255.0 {
        didSet{
            redLabel.text = "Red: \(red)"
        }
    }
    var green: Float = 255.0{
        didSet{
            greenLabel.text = "Green: \(green)"
        }
    }
    var blue: Float = 255.0{
        didSet{
            blueLabel.text = "Blue: \(blue)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = backGroundColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        view.backgroundColor = backGroundColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value))
        red = redSlider.value
        green = greenSlider.value
        blue = blueSlider.value
        
        if red <= 40 && green <= 40 && blue <= 40{
            redLabel.textColor = .white
            greenLabel.textColor = .white
            blueLabel.textColor = .white
        } else {
            redLabel.textColor = .black
            greenLabel.textColor = .black
            blueLabel.textColor = .black
            
        }
    }
    
    func backGroundColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    }
    
}

