//
//  ViewController.swift
//  NavigationStack
//
//  Created by Amit Joshi on 11/02/19.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //outlets
    @IBOutlet var txt_Email: UITextField!
    @IBOutlet var txt_Password: UITextField!
    
   
    
    
    // Submit Action....
    @IBAction func submit_Tapped(_ sender: Any) {
        
        print("submit tapped...");
        
        // validation code...
        
        if txt_Email.text?.count == 0 || txt_Password.text?.count == 0 {
            print("Fields should not be empty...")
        }else {
            // navigate it to another UI....
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let obj:Next = storyboard.instantiateViewController(withIdentifier: "Next") as! Next
            
            obj.emailId = txt_Email.text
            obj.password = txt_Password.text
            
            navigationController?.pushViewController(obj, animated: true)
        }
        
        
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    
    // View Controller Life Cycle....
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        getDataFromWikipedia(searchString:"dog")

    }
    
    func getDataFromWikipedia(searchString:String){
        
        let baseURL = "https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=" + searchString
        
        let escapedURL = baseURL.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        
        let urlForAPI = URL(string: escapedURL!)
        
        // CODE...
        let task = URLSession.shared.dataTask(with: urlForAPI!) {( data, response, error) in
            
            guard let data = data, error == nil else { return }
            
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:Any]
                
                print("json is : \(json)")
                let o_1 = json["query"]! as! [String:Any]
                let o_2 =  o_1["pages"]! as! [String:Any]
                var keys = Array(o_2.keys)
                
                if keys[0] == "-1" { return}
                let txt =  o_2[keys[0]]! as! [String:Any]
                
                print("output is : \(txt["extract"] as! String)")
                
            }catch let error as NSError {
                print("error is :\(error)")
            }
        }
        task.resume()
    }

    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

