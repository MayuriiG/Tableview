//
//  ViewController.swift
//  SelectionMultiple_TV
//
//  Created by Mayurii Gajbhiye on 28/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    var arrData = [String]()
    var selectArrData = [String]()

    @IBOutlet weak var tbView: UITableView!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    //give cell identifier and register
        tbView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
       
        self.tbView.isEditing = true

self.tbView.allowsMultipleSelectionDuringEditing  = true
        self.getData()
 
    }
    
    
    func getData(){
        
    arrData = ["✹Hello-1✞","✹Hello-2✞","✹Hello-3✞","✹Hello-4✞","✹Hello-5✞","✹Hello-6✞","✹Hello-7✞","✹Hello-8✞","✹Hello-9✞","✹Hello-10✞","✹Hello-11✞"]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return arrData.count
    
    }

       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
     
    cell.textLabel?.text = arrData[indexPath.row]
    
    return cell
   
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectDeselectCell(tableView: tableView, indexPath: indexPath)
     print("Select")
  
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.selectDeselectCell(tableView: tableView, indexPath: indexPath)
   
    print("Deselect")
    
    }
    


}

extension ViewController{

//select & Deselect TAbleviewcell
    
    func selectDeselectCell(tableView:UITableView ,indexPath:IndexPath){
        self.selectArrData.removeAll()
        if let arr = tableView.indexPathForSelectedRow{
            
            for i in arr{
                selectArrData.append(arrData[indexPath.row])
            }
        }


}

}
