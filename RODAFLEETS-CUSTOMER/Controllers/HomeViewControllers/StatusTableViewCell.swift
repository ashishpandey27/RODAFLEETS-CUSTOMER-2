//
//  StatusTableViewCell.swift
//  Rodafleets - Customer
//
//  Created by Developer on 07/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class StatusTableViewCell: UITableViewCell {

    let instance = CustomTopView()
    @IBOutlet weak var viewBase: CustomTopView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
     //  instance.contentView.addSubview(viewBase)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
