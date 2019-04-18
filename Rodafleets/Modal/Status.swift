//
//  Status.swift
//  Rodafleets
//
//  Created by Developer on 12/04/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import Foundation
import UIKit

class Status {
    
    var selectedStatus : Int = 0
    var text : String = ""
    
    func configureStatusType() {
        
        switch selectedStatus {
        case 1:
            text = "Pending"
            break
        case 2:
            text = "Bid received"
            break
        case 3:
            text = "Bid accepted"
            break
        case 4:
            text = "Vehicle assigned"
            break
        case 5:
            text = "Allocation Pending"
            break
        case 6:
            text = "Allocation Pending"
            break
        case 7:
            text = "Allocation Pending"
            break
        case 8:
            text = "Allocation Pending"
            break
            
        default:
            text = "Pending"
            break
        }
        
    }
}
