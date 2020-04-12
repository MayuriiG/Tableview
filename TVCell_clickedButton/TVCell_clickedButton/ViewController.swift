//
//  ViewController.swift
//  TVCell_clickedButton
//
//  Created by Mayurii Gajbhiye on 11/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.yo..ge
//
//protocol and delegate
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
    }


}


extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  21
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell   = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell

        
        
        cell.btnOutlt.tag = indexPath.row//(2)(3)
      
        cell.btnOutlt.addTarget(self, action: #selector(cellBtn(sender:)), for: UIControl.Event.touchUpInside)
   
        cell.btnOutlt.setTitle("\(indexPath.row)", for:
            UIControl.State.normal)
          
        //        cell.tapBlock = {
        //          print(indexPath.row)
        //        }//closure .................(1)
                
       //    cell.delegate = self //....protocol delegate(2)
              
        return cell//(2)
    
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
  
    
    @objc func cellBtn(sender:UIButton){
        
        print(sender.tag)
    }
    
}





//extension ViewController:CellDelegate{
//    func CellBtnTapped(tag: Int) {
//        print(tag)
//    }//delegate Protocol(2)
//}
