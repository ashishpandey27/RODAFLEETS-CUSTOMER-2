//
//  CustomGradientView.swift
//  Rodafleets - Customer
//
//  Created by Developer on 04/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//


import UIKit

class CustomGradientView: UIView {
    
      override func draw(_ rect: CGRect) {

  setGradientBackground(colorTop:  UIColor(displayP3Red: 255/255, green: 105/255, blue: 180/255, alpha: 1.0), colorBottom: UIColor(displayP3Red: 250/255, green: 181/255, blue: 23/255, alpha: 1.0))
     }
    
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = bounds
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
