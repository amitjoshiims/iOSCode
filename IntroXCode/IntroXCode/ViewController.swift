//
//  ViewController.swift
//  IntroXCode
//
//  Created by Amit Joshi on 09/02/19.
//

import UIKit

class ViewController: UIViewController {

    // Outlet
    @IBOutlet var lbl_Output: UILabel!
    
    
    @IBAction func switch_Action(_ sender: UISwitch) {
        

        if sender.isOn {
            // when switch is ON.
        
            lbl_Output.text  = "Yes, I want an ice-cream"
        }else {
            // when switch is OFF.
            lbl_Output.text  =  "No, I don't want an ice-cream"

        }
        
        
    }
    
    
    // This is called when viewController is loaded into memory!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad")
    }
    
    
    // If we receive any memory warning.....
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

