//
//  Next.swift
//  NavigationStack
//
//  Created by Amit Joshi on 11/02/19.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class Next: UIViewController {

    var emailId:String?
    var password:String?
    
    
    @IBOutlet var lbl_Details: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_Details.text = "Email:\(emailId!) Password:\(password!)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
