//
//  ResendOTP.swift
//  RODAFLEETS-CUSTOMER
//
//  Created by Developer on 27/03/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import Foundation
import SwiftyJSON
import TRON

struct ResendOTP : Decodable {
    
    var mobile_no  : Int = 0
}

struct ResendOTPdata : Decodable{
    
    let error     :   Bool
    let message   :   String
}

class ResendOTPdataFeteched : JSONDecodable {
    
    let resendOTPdata : ResendOTPdata
    
    required init(json: JSON) throws {

       let error              = json["error"].boolValue
       let message            = json["message"].stringValue
        
       let resend = ResendOTPdata(error: error, message: message)
        
        resendOTPdata = resend
        
     }
}
