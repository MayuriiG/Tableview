//
//  ViewController.swift
//  tableView_Hitesh
//
//  Created by Mayurii Gajbhiye on 06/12/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    //array of string 
    var avenger = ["Thor","IronMan","SuperMan","SpiderMan","Marvel","CaptainAmerica","Hulk","WarMachine","Wolverine","Loki","Batman"]
    
    
    @IBOutlet weak var tableViewSource: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 //added datasource and delegate by control and drag
       
        
    }
//number type ---
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avenger.count
    }
//cellforRow@
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
      //  cell.textLabel?.text = "Batman"
        cell.textLabel?.text = avenger[indexPath.row]
       // cell.textLabel?.backgroundColor = .cyan
        
        
   return cell
    
    }
    
    //prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let guest = segue.destination as!SecondViewController
        guest.heroName = sender as!String
    }
    
//didselectRow
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        //performsegue"
        
        performSegue(withIdentifier: "hero", sender: avenger[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      
        return " Avengers"
    }
    
}
    
    
    



