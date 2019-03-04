//
//  BookingsTableViewCell.swift
//  Rodafleets - Customer
//
//  Created by Developer on 29/01/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class BookingsTableViewCell: UITableViewCell {

    @IBOutlet weak var viewBase: UIView!
    @IBOutlet weak var viewType: UIView!
    @IBOutlet weak var imageORIGIN: UIImageView!
    @IBOutlet weak var imageDestination: UIImageView!
    @IBOutlet weak var viewLiveTrack: UIView!
    @IBOutlet weak var viewContactDriver: UIView!
    
    @IBOutlet weak var viewStatus: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageORIGIN.layer.masksToBounds = false
        imageORIGIN.layer.cornerRadius = imageORIGIN.frame.height/2
        imageORIGIN.clipsToBounds = true
        
        imageDestination.layer.masksToBounds = false
        imageDestination.layer.cornerRadius = imageDestination.frame.height/2
        imageDestination.clipsToBounds = true
        
        let radiansAngle: CGFloat = 135.0 * .pi / 180.0
      
        viewType.transform = CGAffineTransform(rotationAngle: radiansAngle)
       
       // viewType.clipsToBounds = true
       // viewBase.clipsToBounds = true
        
        viewStatus.layer.masksToBounds = false
        viewLiveTrack.layer.cornerRadius = 10.0
        viewContactDriver.layer.cornerRadius = 10.0
        viewLiveTrack.clipsToBounds = true
        viewContactDriver.clipsToBounds = true
    }

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
