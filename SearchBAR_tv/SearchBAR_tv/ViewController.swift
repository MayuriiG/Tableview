//
//  ViewController.swift
//  SearchBAR_tv
//
//  Created by Mayurii Gajbhiye on 16/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate{
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    @IBOutlet weak var tbvIEW: UITableView!
    
    
    var filterArray = [String]()
    
    var playersArray = ["MSDhoni☼","Virat Kohli♣︎","Bumrah✏︎","RohitSharma♨︎","Mayank Agarwa✞","Dinesh Karthik☘︎","Mohammed Shami⚇","Hardik Pandya✺","KLRahul⚙︎","Kuldeep Yadav⎅","Bhuvneshwar Kumar⌛︎"]
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
        
        tbvIEW.delegate = self
        tbvIEW.dataSource = self
        searchBar.delegate = self
         filterArray = playersArray
    }

   
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

////        print("Search value : \(searchText)")

    
    filterArray = searchText.isEmpty ? playersArray : playersArray.filter({ (dataString:String) -> Bool in

        return dataString.range(of: searchText,options: .caseInsensitive) != nil

    })
        self.tbvIEW.reloadData()
        }

    
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return filterArray.count
    
    }

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell =  tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)as! TableViewCell

    cell.lbl.text  = filterArray[indexPath.row]
    return cell
    
    }

}

