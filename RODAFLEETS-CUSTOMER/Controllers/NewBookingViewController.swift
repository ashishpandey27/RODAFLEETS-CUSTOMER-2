//
//  NewBookingViewController.swift
//  Rodafleets - Customer
//
//  Created by Developer on 01/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit


class NewBookingViewController: UIViewController {

    
    @IBOutlet weak var btnIntercity: UIButton!
    @IBOutlet weak var btnIntracity: UIButton!
    @IBOutlet weak var btnCreateBooking: UIButton!
    
    var logistic_type : NSString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 250/255, green: 181/255, blue: 23/255, alpha: 1.0)
       
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
    }
    
    
   
    
    @IBAction func back_btn_action(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
