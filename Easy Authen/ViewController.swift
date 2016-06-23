//
//  ViewController.swift
//  Easy Authen
//
//  Created by Pecko Loius on 6/23/16.
//  Copyright © 2016 Pecko Loius. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
    
    @IBOutlet weak var User: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func LoginButton(sender: AnyObject) {
        
        let user = User.text
        let pass = Password.text
        
        print("user ==> \(user)")
        print("password ==> \(pass))")
        
        
        
    } // Login
    


} // Class

