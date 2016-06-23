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
        
        checkSpace(user!, strPass:pass!)
        
    } // Login
    
    func checkSpace(strUser:String, strPass:String) -> Void {
        if ((strUser.isEmpty) || (strPass.isEmpty)) {
            
            print("Have Space")
            
            // Alert Dialog
            let myAlert = UIAlertController(title: "ช่องว่าง", message: "กรุณากรอกข้อมูลให้ครบ", preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(myAlert, animated: true, completion: nil)
            
            
        
        
        } // if
    }

} // Class

