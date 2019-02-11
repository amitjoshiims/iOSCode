//
//  ViewController.swift
//  TestTable
//
//  Created by Amit Joshi on 04/01/19.
//  Copyright © 2019 Amit Joshi. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var data = ["amit", "ajay", "sneha","anjana","vishal"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tblView.tableFooterView = UIView(frame: .zero)
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80;
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let Cell: String = "cell";
        var cell: CustomCell? = tableView.dequeueReusableCell(withIdentifier: Cell, for: indexPath) as? CustomCell;
        
        if(cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle , reuseIdentifier: Cell) as? CustomCell;
        }
        
        cell?.lbl.text = data[indexPath.row]
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
    
     func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            data.remove(at: indexPath.row)
            tblView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

