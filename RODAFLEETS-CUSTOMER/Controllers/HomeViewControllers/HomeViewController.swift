//
//  HomeViewController.swift
//  Rodafleets - Customer
//
//  Created by Developer on 07/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, DashboardMenuWidgetDelegate{
    func selectedIndex(index: Int) {
        
        if index == 0{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "NewBookingViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! NewBookingViewController
            self.navigationController?.show(vc, sender: self);
            
            print("hbhk")
        }
        
        if index == 1{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "MyBookingsViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! MyBookingsViewController
            self.navigationController?.show(vc, sender: self);
        }
        
        
        if index == 3{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "CompletedOrdersViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! CompletedOrdersViewController
            self.navigationController?.show(vc, sender: self);
        }
        if index == 4{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "ContactUsViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! ContactUsViewController
            self.navigationController?.show(vc, sender: self);
        }
        
        
        if index == 5{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "ReferAndEarnViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! ReferAndEarnViewController
            self.navigationController?.show(vc, sender: self);
            
        }
        if index == 7{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let viewName:NSString = "AboutRodafleetsViewController"
            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! AboutRodafleetsViewController
            self.navigationController?.show(vc, sender: self);
        }
    }
    
   
    
    
    @IBOutlet weak var tableViewObj: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewObj.dataSource = self
        tableViewObj.delegate = self
        // Do any additional setup after loading the view.
        tableViewObj.separatorStyle = .none
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableViewObj.dequeueReusableCell(withIdentifier: "cellHome") as!  HomeTableViewCell
        
        let cell_1 = tableViewObj.dequeueReusableCell(withIdentifier: "cellStatus") as!  StatusTableViewCell
        
        let cell_2 = tableViewObj.dequeueReusableCell(withIdentifier: "cellHomeMenu") as!  HomeMenuTableViewCell
        
        if indexPath.row == 0{
            return cell
        }
        if indexPath.row == 2{
            
            cell_2.delegate = self
            return cell_2
        }
        else{
            return cell_1
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            return (self.view.frame.size.width-20)*9/16
        }
        if indexPath.row == 2{
            return ScreenSize.Width + 20
            
        }
        else{
            return 100
        }
        
    }
    
    func selectedSelectedIndex(index: Int) {
        
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
