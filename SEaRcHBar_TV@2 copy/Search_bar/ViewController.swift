//
//  ViewController.swift
//  Search_bar
//
//  Created by Mayurii Gajbhiye on 30/03/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

//give navigation controller ... then only search bar work
//different values
struct DataModel {
    var fname:String = ""
     var lname:String = ""
}



class ViewController: UIViewController,UISearchBarDelegate ,UISearchResultsUpdating{
    
    
    @IBOutlet weak var tableViw: UITableView!
    var arryData = [DataModel]()
 
    let searchResult =  UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
     tableViw.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
         searchbarsetup()//......(1)
        
         createData()//.....(2)
        //updateSearchResults
    }
    
    
    private func createData(){
 
        arryData = [
        
        DataModel(fname: "✿Allu", lname: "Arjun⍨"),
        DataModel(fname: "❤︎Mahesh", lname: "Babu⍨"),
        DataModel(fname: "✹Ram", lname: "Charan⍨"),
        DataModel(fname: "❦Akhil", lname: "Nagarjun⍨"),
        DataModel(fname: "✣Nani", lname: "K⍨"),
        DataModel(fname: "✦Prabhas", lname: "Actor⍨"),
        DataModel(fname: "⇭Pawan", lname: "Kalyan⍨"),
        ]
    
    }
    
    
    
  //SearchUpdating..........
    private func searchbarsetup(){
        searchResult.searchResultsUpdater = self
        searchResult.searchBar.delegate = self
        
        navigationItem.searchController = searchResult
        
        }
        
        
        
    
    func updateSearchResults(for searchController: UISearchController) {
        //later
        
          guard let searchTxt = searchController.searchBar.text
            else { return }
        
           if searchTxt  == ""{ //nothg  then
          
              createData()
            
            }else{
          
            arryData = arryData.filter{
                $0.fname.contains(searchTxt)//filter
            }
            
         }
        
        tableViw.reloadData()
      }
        
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
 //note this methode..........................
        let cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = arryData[indexPath.row].fname
        cell.detailTextLabel?.text = arryData[indexPath.row].lname
        return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
