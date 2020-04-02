//
//  CustomTableViewCell.swift
//  UpMenu
//
//  Created by Mayurii Gajbhiye on 02/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    //All about the cell Design
    lazy var backView: UIView = {
        let view  = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 50
        
       ))
         return view
    
    
    }()
    lazy var settingImage:UIImageView = {
        
      let imageViw  = UIImageView(frame: CGRect(x: 15, y: 10, width: 30, height: 30))
        imageViw.contentMode = .scaleAspectFit
        return imageViw
        
    }()
    
    lazy var labl:UILabel = {
        let  lbl = UILabel(frame: CGRect(x: 60, y: 10, width: self.frame.width-80, height: 30))
        return lbl
        
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        addSubview(backView)
        backView.addSubview(settingImage)
        backView.addSubview(labl)
        // Configure the view for the selected state
    }

}
