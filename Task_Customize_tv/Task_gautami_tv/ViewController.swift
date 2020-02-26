//
//  ViewController.swift
//  Task_gautami_tv
//
//  Created by Mayurii Gajbhiye on 25/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  

    @IBOutlet weak var tableviewContent: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
                          //xib nib
  let nib1  = UINib(nibName: "First_TableViewCell", bundle: nil)
   tableviewContent.register(nib1, forCellReuseIdentifier: "cell1")
    
                           //xib nib
 let nib2 = UINib(nibName: "Second_TableViewCell", bundle: nil)
    tableviewContent.register(nib2, forCellReuseIdentifier: "cell2")
    
        
        
let nib3 = UINib(nibName: "Third_TableViewCell", bundle: nil)
    tableviewContent.register(nib3, forCellReuseIdentifier: "cell3")
        
        
let nib4 = UINib(nibName: "Fourth_TableViewCell", bundle: nil)
tableviewContent.register(nib4, forCellReuseIdentifier: "cell4")

    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 10
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0{
            
        
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! First_TableViewCell
//        cell.boldLbl.text =  "MT- SKIN"
//        cell.txtLbl.text = "Shop No.123,Unknown  Arcade,                           Unknown Hills,Madhapur,Hydrabad"
            
            return cell
        }else if indexPath.row == 1{
            
        
    let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! Second_TableViewCell
//        cell2.servicesLbl.text = "Hair Styling & Dressing"
//        cell2.headLineLbl.text = "xoxo"
//        cell2.txtServiceLbl.text = "Hair Styling & Dressing"
        
        return cell2
            
    }   else if indexPath.row == 2{
                
        let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! Third_TableViewCell
    //        cell2.servicesLbl.text = "Hair Styling & Dressing"
    //        cell2.headLineLbl.text = "xoxo"
    //        cell2.txtServiceLbl.text = "Hair Styling & Dressing"
            
            return cell3
        }
        else{
        let cell4 = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! Fourth_TableViewCell
          
            return cell4
        }
      
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        if indexPath.row == 0{
             return 300
            
        }else if indexPath.row == 1{
            
            return 120
        }else if indexPath.row == 2{
        
        return 80
            
    }else
        {
            return 100
            
        }
       
    }
    
    
}

