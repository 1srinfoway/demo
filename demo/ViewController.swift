//
//  ViewController.swift
//  demo
//
//  Created by chirag2 on 04/01/20.
//  Copyright © 2020 chirag2. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tblview: UITableView!
    
    
    var Count:Int = 1
    var Flag:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblview.dequeueReusableCell(withIdentifier: "mainTableViewCell", for: indexPath) as! mainTableViewCell
        cell.morebtn.tag = indexPath.row
        cell.morebtn.addTarget(self, action: #selector(MoreBtn_Tap), for: .touchUpInside)
        if indexPath.row == Count-2 {
            if Flag == true{
                cell.morebtn.isHidden = true
                Flag = false
            }
            else
            {
                cell.morebtn.isHidden = false
            }
        }
        
        return cell
    }
    

    @objc func MoreBtn_Tap(sender:UIButton){
        // let cell = tblview.dequeueReusableCell(withIdentifier: "", for: sen) as! mainTableViewCell
        let cell = tblview.dequeueReusableCell(withIdentifier: "mainTableViewCell") as! mainTableViewCell
        Count = Count+1
       Flag = true
        tblview.reloadData()
        
      
        
    }
}

