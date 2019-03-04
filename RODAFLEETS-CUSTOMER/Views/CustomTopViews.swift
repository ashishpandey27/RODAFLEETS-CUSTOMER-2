//
//  CustomViews.swift
//  Rodafleets - Customer
//
//  Created by Developer on 28/01/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//


import UIKit

class CustomTopView: UIView {
    
    private var shadowLayer: CAShapeLayer!
    private var cornerRadius: CGFloat = 8.0//
    private var fillColor: UIColor = .white // the color applied to the shadowLayer, rather than the view's backgroundColor
    
    let contentView = UIView()
    
  
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).cgPath
            shadowLayer.fillColor = fillColor.cgColor
            
            shadowLayer.shadowColor = UIColor.gray.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = .zero
            shadowLayer.shadowOpacity = 0.5
            shadowLayer.shadowRadius = 2.0
            shadowLayer.shouldRasterize = true
            
    
            layer.insertSublayer(shadowLayer, at: 0)
            
//            contentView.frame = self.frame
//            //  contentView.layer.cornerRadius = cornerRadius
//            contentView.layer.masksToBounds = true
            
        }
    }
    
}
    
    
    
    
    
    
    
    
    
    
    
    
//    override func draw(_ rect: CGRect) {
//
//        self.layer.borderWidth = 0.5
//        self.layer.borderColor = UIColor(red: 205/255, green: 206/255, blue: 207/255, alpha: 1.0).cgColor
//        self.layer.cornerRadius = 6.0
//        self.layer.masksToBounds = true
//        self.clipsToBounds = true
//
//        dropShadow(color: .gray, opacity: 1, offSet: CGSize(width: -1, height: 1), radius: 3, scale: true)
//    }
//
//
//    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
//        layer.masksToBounds = false
//        layer.shadowColor = UIColor.gray.cgColor
//        layer.shadowOpacity = opacity
//        layer.shadowOffset = offSet
//        layer.shadowRadius = radius
//
//        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
//        layer.shouldRasterize = true
//        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
//    }




