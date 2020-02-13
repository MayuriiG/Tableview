//
//  SecondViewController.swift
//  tableView_Hitesh
//
//  Created by Mayurii Gajbhiye on 06/12/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var heroName = ""
    
    @IBOutlet weak var heroLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        heroLbl.text = "\(heroName)"
       
        if heroName == "Hulk"{
            
            self.view.backgroundColor = UIColor.green
        }else if heroName == "Batman"{
            self.view.backgroundColor = UIColor.black
        }
        
        // Do any additional setup after loading the view.
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
