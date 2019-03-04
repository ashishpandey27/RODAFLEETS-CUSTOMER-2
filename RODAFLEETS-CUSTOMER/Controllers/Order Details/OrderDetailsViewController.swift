//
//  OrderDetailsViewController.swift
//  Rodafleets - Customer
//
//  Created by Developer on 29/01/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class OrderDetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    

    @IBOutlet weak var tbleviewOBJ: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tbleviewOBJ.dataSource = self
        tbleviewOBJ.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 250/255, green: 181/255, blue: 23/255, alpha: 1.0)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0)
    }
    
    
    
    @IBAction func btn_back_action(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
           
            
            return 200
        }
            
        else if indexPath.row == 1 {
          
            return 212
        }
            
        else  {
           
            
            return 309
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
             let cell = tbleviewOBJ.dequeueReusableCell(withIdentifier: "cellDistance", for: indexPath) as! DistanceTableViewCell
            
            return cell
        }
        
        else if indexPath.row == 1 {
             let cell1 = tbleviewOBJ.dequeueReusableCell(withIdentifier: "cellShipment", for: indexPath) as! ShipmentTableViewCell
            return cell1
        }
        
      else  {
            let cell2 = tbleviewOBJ.dequeueReusableCell(withIdentifier: "cellTracking", for: indexPath) as! TrackingTableViewCell
            
            return cell2
        }
        
        
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
