//
//  ViewController.swift
//  Rearrage_UiTableViewCell
//
//  Created by Mayurii Gajbhiye on 27/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var editBtn: UIButton!
    
    
    @IBOutlet weak var tbleView: UITableView!
    
    var data = ["Apple","Pinneapple","Mango","Grapes","Banana","CHeery"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
    
        editBtn.layer.cornerRadius = editBtn.frame.height / 2.0
        tbleView.layer.cornerRadius = 22
        
        
        tbleView.showsVerticalScrollIndicator = false
    
        tbleView.dataSource = self
        tbleView.delegate = self
    }

    @IBAction func btnTapped(_ sender: UIButton) {
        tbleView.isEditing = !tbleView.isEditing
        let title = (tbleView.isEditing) ? "Done" : "Edit"
        
        editBtn.setTitle(title, for: .normal)
    
    
    }
    
    
    
    
    
    
}


extension ViewController :UITableViewDelegate,UITableViewDataSource{
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
    
   
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let temp = data[sourceIndexPath .row]

        data.insert(temp, at: sourceIndexPath.row)
        data.remove(at: destinationIndexPath.row
        )
        print(data)
        
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete ){
            data.remove(at: indexPath.row)
            tbleView.deleteRows(at: [indexPath], with: .left)
            
            
        }
    }
//
//    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {

//        return true
//    }
    
    
    
}

