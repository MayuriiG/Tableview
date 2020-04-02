//
//  ViewController.swift
//  UpMenu
//
//  Created by Mayurii Gajbhiye on 02/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//lets creat an app

import UIKit

class ViewController: UIViewController {
    
    
    var transparentView  = UIView()
    var tableView = UITableView()
    
    var height:CGFloat = 300 //height of tableview
    var settingArry = ["Profile","Favorite","Notification","Change","Password","Logout"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.isScrollEnabled = true
        tableView.delegate = self
        tableView.dataSource = self
    tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        
        // Do any additional setup after loading the view.
    }
    
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
      

    @IBAction func menuBtn(_ sender: Any) {
   
        let window = UIApplication.shared
        .keyWindow
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        transparentView.frame = self.view.frame
        //self.view.addSubview(transparentView)
        window?.addSubview(transparentView)
        
     
        //after @objc func
        let screenSize = UIScreen.main.bounds.size
        tableView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize
            .width, height: height)
        window?.addSubview(tableView)
        
     //Gesture
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onClickedTransparentView))
        transparentView.addGestureRecognizer(tapGesture)
        transparentView.alpha = 0
        
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
        self.transparentView.alpha = 0.5
            
        self.tableView.frame = CGRect(x: 0, y: screenSize.height - self.height, width: screenSize.width, height: self.height)
        }, completion: nil)
    
    
    }
        
        
        @objc func onClickedTransparentView(){
            //making screen @ bottom
    
        let screenSize = UIScreen.main.bounds.size

        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.alpha = 0
//make sure tht transparent view is set zero
        self.tableView.frame = CGRect(x: 0, y: screenSize.height, width: screenSize.width, height: self.height)
            }, completion: nil)
           
    }
}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingArry.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell

            else {
                fatalError("Unable to deque")}
    cell.labl.text = settingArry[indexPath.row]
    cell.settingImage.image =  UIImage(named: settingArry[indexPath.row])!
        return cell
        }



    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
      case 0:guard let vc = storyboard?.instantiateViewController(identifier: "ProfileViewController")else{
           fatalError("Unable to create viewController")}
           self.navigationController?.pushViewController(vc, animated: true)
            
      case 1: guard let vc1 = storyboard?.instantiateViewController(identifier: "FavoriteViewController")else{
          fatalError("Unable to create viewController")}
          self.navigationController?.pushViewController(vc1, animated: true)
            
      case 2 :guard let vc2 = storyboard?.instantiateViewController(identifier: "NotificationViewController")else{
          fatalError("Unable to create viewController")}
          self.navigationController?.pushViewController(vc2, animated: true)
            
      case 3 :guard let vc3 = storyboard?.instantiateViewController(identifier: "ChangeViewController")else{
          fatalError("Unable to create viewController")}
          self.navigationController?.pushViewController(vc3, animated: true)
                 
      case 4 :guard let vc4 = storyboard?.instantiateViewController(identifier: "PasswordViewController")else{
          fatalError("Unable to create viewController")}
          self.navigationController?.pushViewController(vc4, animated: true)
            
                   
      case 5 :guard let vc5 = storyboard?.instantiateViewController(identifier: "LogoutViewController")else{
          fatalError("Unable to create viewController")}
          self.navigationController?.pushViewController(vc5, animated: true)
            
       
        default:
                   "Unable to Create VC"
        }
    }


}


