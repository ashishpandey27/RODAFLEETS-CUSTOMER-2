//
//  CompletedOrdersTableViewCell.swift
//  Rodafleets - Customer
//
//  Created by Developer on 04/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class CompletedOrdersTableViewCell: UITableViewCell {

    @IBOutlet weak var viewBase: UIView!
    @IBOutlet weak var imageORIGIN: UIImageView!
    @IBOutlet weak var imageDestination: UIImageView!
    @IBOutlet weak var viewNeedSupport: UIView!
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageORIGIN.layer.masksToBounds = false
        imageORIGIN.layer.cornerRadius = imageORIGIN.frame.height/2
        imageORIGIN.clipsToBounds = true
        
        imageDestination.layer.masksToBounds = false
        imageDestination.layer.cornerRadius = imageDestination.frame.height/2
        imageDestination.clipsToBounds = true
       
        
        viewNeedSupport.layer.cornerRadius = 10.0
        viewNeedSupport.clipsToBounds = true
       
    }
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

