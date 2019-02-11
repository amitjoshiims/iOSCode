//
//  ViewController.swift
//  Register
//
//  Created by Amit Joshi on 04/01/19.
//  Copyright © 2019 Amit Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.isNavigationBarHidden = true ;
        
        Singleton.sharedInstance.marks = 25
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SignUp_Tapped(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let obj:SignUp = storyboard.instantiateViewController(withIdentifier: "SignUp") as! SignUp
        navigationController?.pushViewController(obj, animated: true)
        
    }
    @IBAction func SignIn_Tapped(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let obj:SignIn = storyboard.instantiateViewController(withIdentifier: "SignIn") as! SignIn
        navigationController?.pushViewController(obj, animated: true)

    }
}

