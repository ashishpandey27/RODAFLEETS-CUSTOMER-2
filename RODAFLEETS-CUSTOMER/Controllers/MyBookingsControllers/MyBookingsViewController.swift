//
//  MyBookingsViewController.swift
//  Rodafleets - Customer
//
//  Created by Developer on 29/01/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class MyBookingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var viewMonth: UIView!
    @IBOutlet weak var tblviewOBJ: UITableView!
    @IBOutlet weak var btnApplyFilter: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewMonth.layer.borderWidth = 0.5
        viewMonth.layer.borderColor = UIColor.lightGray.cgColor
        viewMonth.layer.cornerRadius = 20.0
        tblviewOBJ.delegate = self
        tblviewOBJ.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back_btn_action(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }

    
    override func viewWillAppear(_ animated: Bool) {
         navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 250/255, green: 181/255, blue: 23/255, alpha: 1.0)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblviewOBJ.dequeueReusableCell(withIdentifier: "cellBookings", for: indexPath) as! BookingsTableViewCell
        return cell
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
