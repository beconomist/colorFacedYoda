//
//  ViewController.swift
//  lesson0326
//
//  Created by Bao on 26/03/2018.
//  Copyright © 2018 Bao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()

    @IBOutlet weak var colorBackgroundView: UIView!
    @IBOutlet weak var colorBackgroundViewLightsaber: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!

    @IBOutlet weak var locationSlider: UISlider!
    
    @IBOutlet weak var redSliderValueLabel: UILabel!
    @IBOutlet weak var blueSliderValueLabel: UILabel!
    @IBOutlet weak var greenSliderValueLabel: UILabel!
    
    @IBAction func redSliderChange(_ sender: Any) {
        
//        print(redSlider.value)
        
        redSliderValueLabel.text = String(Int(redSlider.value))
        blueSliderValueLabel.text = String(Int(blueSlider.value))
        greenSliderValueLabel.text = String(Int(greenSlider.value))
        
        colorBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255.0), green: CGFloat(greenSlider.value/255.0), blue: CGFloat(blueSlider.value/255.0), alpha: 1)
        
    }
    
    @IBAction func locationSliderChange(_ sender: UISlider) {

        var locationTop = round(10*locationSlider.value)/10
        
        print("locationSliderChange: \(round(10*locationSlider.value)/10)")
       
            let colorTop = UIColor.green.cgColor
            let colorBottom = UIColor.blue.cgColor
        gradientLayer.frame = self.colorBackgroundViewLightsaber.bounds
        gradientLayer.colors = [colorTop, colorBottom]
        
        
        gradientLayer.locations = [0.0,NSNumber(value: locationTop)]
        
        self.colorBackgroundViewLightsaber.layer.addSublayer(gradientLayer)
      
        
    }
    
    @IBAction func relearnButton(_ sender: UIButton) {
        
        
        redSlider.value = 150
        greenSlider.value = 176
        blueSlider.value = 131
        
        locationSlider.value = 0.5
        var locationTop = 0.5
        
        redSliderValueLabel.text = String(150)
        greenSliderValueLabel.text = String(176)
        blueSliderValueLabel.text = String(131)
        
        colorBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255.0), green: CGFloat(greenSlider.value/255.0), blue: CGFloat(blueSlider.value/255.0), alpha: 1)
        
        let colorTop = UIColor.green.cgColor
        let colorBottom = UIColor.blue.cgColor
        gradientLayer.frame = self.colorBackgroundViewLightsaber.bounds
        gradientLayer.colors = [colorTop, colorBottom]
        
        
        gradientLayer.locations = [0.0,NSNumber(value: locationTop)]
        
        self.colorBackgroundViewLightsaber.layer.addSublayer(gradientLayer)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        colorBackgroundView.backgroundColor = UIColor(red: CGFloat(redSlider.value/255.0), green: CGFloat(greenSlider.value/255.0), blue: CGFloat(blueSlider.value/255.0), alpha: 1)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

