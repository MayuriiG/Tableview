//
//  TableViewCell.swift
//  TVCell_clickedButton
//
//  Created by Mayurii Gajbhiye on 11/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit
//need to keep class otherwise u cant use weak
//
//protocol CellDelegate:class{
//
//    func CellBtnTapped(tag:Int)
//
//}
// Protocol delegate .......(2)

class TableViewCell: UITableViewCell {
   
    @IBOutlet weak var btnOutlt: UIButton!

    //   weak var  delegate:CellDelegate?
 
    
 //   var tapBlock: (() -> Void)? = nil  //.....closure(1)
  
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
          super.setSelected(selected, animated: animated)
          // Configure the view for the selected state
      }
    

    
    
    
    
    
    @IBAction func btnAction(_ sender: UIButton) {

        //tapBlock?() //closure........(1)
        
     //   delegate?.CellBtnTapped(tag: sender.tag)   //Protocol delegate(2)
    }
  
}





// let nv2 = storyboard?.instantiateViewController(identifier: "NextViewController") as! NextViewController
  //     present(nv2, animated: true, completion: nil)
