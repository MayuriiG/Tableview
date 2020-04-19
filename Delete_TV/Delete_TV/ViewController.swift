//
//  ViewController.swift
//  Delete_TV
//
//  Created by Mayurii Gajbhiye on 19/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

 class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    var arrStateNames = ["✖️Andhra Pradesh🁋","✖️Assam🁋","✖️Bihar🁋","✖️Chhattisgarh🁋","✖️Goa🁋","✖️Gujrat🁋","✖️HimachalPradesh🁋","✖️Haryana🁋","✖️Jharkhand🁋","✖️Karnataka🁋","✖️Kerala🁋","✖️MP🁋","✖️Maharashtra🁋","✖️Odisha🁋","✖️Punjab🁋","✖️Rajasthan🁋","✖️Sikkim🁋","✖️UP🁋"]
     var capitalArr = ["♲Hyderabad🐾","♲Dispur🐾","♲Patna🐾","♲Raipur🐾","♲Panji🐾","♲Ahmedabad🐾","♲Shimla🐾","♲Chandigarh🐾","♲Raipur🐾","♲Banglore🐾","♲Thiruvananthapuram🐾","♲Bhopal🐾","♲Mumbai🐾","♲Bhubaneswar🐾","♲Chandigarh🐾","♲Jaipur🐾","♲Gangtok🐾","♲Lucknow🐾"]
    
    
    @IBOutlet weak var tbleView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrStateNames.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = arrStateNames[indexPath.row]
        cell.detailTextLabel?.text = capitalArr[indexPath.row]
        
        return cell
      }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
      
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            
            
          
            arrStateNames.remove(at: indexPath.row)
            capitalArr.remove(at: indexPath.row)
            tbleView.deleteRows(at: [indexPath], with:.automatic)
        }
    }
}

