//
//  First_TableViewCell.swift
//  Task_gautami_tv
//
//  Created by Mayurii Gajbhiye on 25/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class First_TableViewCell: UITableViewCell {

    
    @IBOutlet weak var boldLbl: UILabel!
    
    
    @IBOutlet weak var txtLbl: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
