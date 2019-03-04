//
//  CustomInsideView.swift
//  Rodafleets - Customer
//
//  Created by Developer on 05/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit
class CustomInsideView: UIView {
    
    private var shadowLayer: CAShapeLayer!
    private var cornerRadius: CGFloat = 8.0
    private var fillColor: UIColor = .blue // the color applied to the shadowLayer, rather than the view's backgroundColor
    
    override func layoutSubviews() {
        super.layoutSubviews()

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
          
            shadowLayer.path = UIBezierPath(rect: bounds).cgPath
            
           // shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 0).cgPath
            shadowLayer.fillColor = fillColor.cgColor
            
//            shadowLayer.shadowColor = UIColor.darkGray.cgColor
//            shadowLayer.shadowPath = shadowLayer.path
//            shadowLayer.shadowOffset = CGSize(width: 1.0, height: 2.0)
//            shadowLayer.shadowOpacity = 0.8
//            shadowLayer.shadowRadius = 2
            shadowLayer.masksToBounds = true
            
            layer.insertSublayer(shadowLayer, at: 0)
        }
    }
    
}


      
