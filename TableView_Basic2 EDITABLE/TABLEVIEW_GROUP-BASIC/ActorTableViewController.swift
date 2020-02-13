//
//  ActorTableViewController.swift
//  TABLEVIEW_GROUP-BASIC
//
//  Created by Mayurii Gajbhiye on 07/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class ActorTableViewController: UITableViewController {

    
    @IBOutlet var TV: UITableView!
    var actorName = ["Amitabh Bachchan","Sharukh Khan","Shushant Singh","Salman Khan","Shahid Kapoor","Ranveer Singh","Ranbir Kapoor","Varun Dhawan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TV.register(UITableViewCell.self, forCellReuseIdentifier: "theCell")
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
//.........................................Number of Rows..............
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return actorName.count
    }

    //..........................Cell for Row @..........................
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "theCell", for: indexPath)
      
        cell.textLabel?.text = actorName[indexPath.row]
       
        //self.tableView.register(UITableView.self, forCellReuseIdentifier: "theCell")
        print("\(cell)")
 
        return cell
    }
    
    
 //   ...Can Edit Row.(complex line not to use)..................................
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        if (indexPath.row % 2 == 0 ){
//           return true
//
//        }else
//        { return false
//
//        }
//
//    }
//   ......................Editing Style for Row...............................
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if (indexPath.row%2 == 0)
        {
            return UITableViewCell.EditingStyle.insert
        }else{
            
            return UITableViewCell.EditingStyle.delete
        }
        
    }
   //.......................Commit Editing Style............................
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        print("commit Editing style")
        
        
        if(editingStyle == .insert)
        {
           
            actorName.insert("Mahesh Babu", at: indexPath.row)
           
            print("insert rows")
tableView.insertRows(at: [indexPath], with: UITableView.RowAnimation.middle)
      
        }else{
            
            if(editingStyle == .delete)
            {
                
            actorName.remove(at: indexPath.row)
            print("delete row")
tableView.deleteRows(at:[indexPath], with: UITableView.RowAnimation.automatic)
            }
            
        }
        
         
    }
  
    //........................Reorderof number.......................
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return  true
    }
    
     //........................Rearranging of numbers......................
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        print("User dragged\(sourceIndexPath.row) and dropped \(destinationIndexPath.row) ")
    
        
        var storedName = actorName[sourceIndexPath.row]
        actorName.remove(at: sourceIndexPath.row)
        actorName.insert(storedName, at: destinationIndexPath.row)
    }
    
}



