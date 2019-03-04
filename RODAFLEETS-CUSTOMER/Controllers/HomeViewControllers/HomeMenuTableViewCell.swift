//
//  HomeMenuTableViewCell.swift
//  Rodafleets - Customer
//
//  Created by Developer on 07/02/19.
//  Copyright © 2019 Neuweg Technologies. All rights reserved.
//

import UIKit

protocol DashboardMenuWidgetDelegate : NSObjectProtocol {
    func selectedIndex(index : Int)
    
}

class HomeMenuTableViewCell: UITableViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {

     weak var delegate: DashboardMenuWidgetDelegate?
    
    let arrMenuName = ["CREATE BOOKING","MY BOOKINGS", "LIVE TRACKING","COMPLETED ORDERS","CONTACT US","REFER & EARN","TRADE DEFINITATIONS","ABOUT RODAFLEETS"] as NSArray
    let arrMenuImages = ["createBooking","myBookings","liveTracking","completedOrders","contactUs","referAndEarn","trade","roda-white"] as NSArray
    let arrDetail = ["Start making a new request", "Check all your bookings", "Live track on ongoing order", "View completed orders", "Looking for support?", "Refer your friends and earn with us", "Check about our platform usage", "Know us who we are"]
    
    
   
    @IBOutlet weak var collectionViewObj: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionViewObj.dataSource = self
        collectionViewObj.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // protocol method
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return arrMenuName.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewObj.dequeueReusableCell(withReuseIdentifier: "cellTitle", for: indexPath) as! TitlesCollectionViewCell
        
        cell.lblTitle.text = arrMenuName[indexPath.item] as? String
        cell.lblDetail.text = arrDetail[indexPath.item] 
        cell.imageMenu.image = UIImage(named: arrMenuImages[indexPath.item] as! String)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let padding: CGFloat =  25
        let collectionViewSize = collectionView.bounds.width/2 - padding
        
        return CGSize(width: collectionViewSize , height: 90)
       // return CGSize(width: collectionView.frame.width/2, height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
      
        delegate?.selectedIndex(index: indexPath.row)
        
      print(indexPath.row)
//        if indexPath.item == 0 {
//            print("dfgfd")
//
////            let storyboard = UIStoryboard(name: "Main", bundle: nil);
////            let viewName:NSString = "MyBookingsViewController"
////            let vc = storyboard.instantiateViewController(withIdentifier: viewName as String) as! MyBookingsViewController
////            self.navigationController?.show(vc, sender: self);
//
//        }
//        if indexPath.item == 1 {
//            print("dfgfdgdgfd")
//
//        }
//
    }
  
    
    
}
