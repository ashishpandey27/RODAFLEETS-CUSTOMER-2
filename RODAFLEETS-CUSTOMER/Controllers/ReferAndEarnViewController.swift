//
//  ReferAndEarnViewController.swift
//  Rodafleets - Customer
//
//  Created by Developer on 04/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class ReferAndEarnViewController: UIViewController {

    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    
    @IBOutlet weak var imageThree: UIImageView!
    
    @IBOutlet weak var viewEarnings: UIView!
    
    @IBOutlet weak var btnReferNow: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationController?.navigationBar.shadowImage = UIImage();
        
        viewOne.layer.borderWidth = 3.0
        viewOne.layer.borderColor = UIColor(displayP3Red: 84/255, green: 41/255, blue: 252/255, alpha: 1.0).cgColor
        viewOne.layer.cornerRadius = viewOne.frame.height/2
        
        viewTwo.layer.borderWidth = 3.0
        viewTwo.layer.borderColor = UIColor(displayP3Red: 84/255, green: 41/255, blue: 252/255, alpha: 1.0).cgColor
        viewTwo.layer.cornerRadius = viewTwo.frame.height/2
        
        viewThree.layer.borderWidth = 3.0
        viewThree.layer.borderColor = UIColor(displayP3Red: 84/255, green: 41/255, blue: 252/255, alpha: 1.0).cgColor
        viewThree.layer.cornerRadius = viewThree.frame.height/2
        
        
        viewEarnings.layer.cornerRadius = 20.0
       
       
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
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
