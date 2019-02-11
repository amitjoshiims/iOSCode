//
//  SignIn.swift
//  Register
//
//  Created by Amit Joshi on 04/01/19.
//  Copyright © 2019 Amit Joshi. All rights reserved.
//

import UIKit

class SignIn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("value of marks : \(Singleton.sharedInstance.marks)")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back_Tapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func signIn_Tapped(_ sender: Any) {
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let obj:Home = storyboard.instantiateViewController(withIdentifier: "Home") as! Home
        navigationController?.pushViewController(obj, animated: true)
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
