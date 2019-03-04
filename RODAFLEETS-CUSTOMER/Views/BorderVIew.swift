//
//  BorderVIew.swift
//  Rodafleets - Customer
//
//  Created by Developer on 04/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import Foundation

import UIKit

class BorderView: UIView {
    
    override func draw(_ rect: CGRect) {
        self.clipsToBounds = true
        self.layer.masksToBounds = false
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 6.0
        
        //self.layer.masksToBounds = true
    }
    
    
}
