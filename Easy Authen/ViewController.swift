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
            
            myAlertDialog("ช่องว่าง", strMessage: "กรุณากรอกข้อมูลให้ครบ")
            
        
        } else {
        
            var trueUser = ["pecko", "loius", "Chom"]
            var truePass = ["1234", "4567", "7890"]
            
            var index = 0
            var status = false
            var myTruePass = ""
            
            
            
            for myFor in trueUser {
                if strUser == myFor {
                    status = true
                    myTruePass = truePass[index]
                    
                } //
                
                index += 1
            } // for
            
            
            if status {
                
                if (strPass == myTruePass) {
                    
                    let goToService = self.storyboard?.instantiateViewControllerWithIdentifier("serviceID") as! ServiceViewController
                    self.navigationController?.pushViewController(goToService, animated: true)
                    
                    myAlertDialog("ยินดีต้อนรับ", strMessage: "เข้าสู่การทดสอบสายตาแล้วครับ")
                    
                } else {
                
                    myAlertDialog("Password ผิด", strMessage: "กรุณากรอก Password ให้ถูกต้อง")
                
                }
                
            } else {
            
                myAlertDialog("User ผิด", strMessage: "กรุณากรอก User ให้ถูกต้อง")
            
            }
            
            
        
        } // if
    
        
    
    } // CheckSpace
    
    
    func myAlertDialog(strTitle:String, strMessage:String) -> Void {
        
        // Alert Dialog
        let myAlert = UIAlertController(title: strTitle, message: strMessage, preferredStyle: UIAlertControllerStyle.Alert)
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(myAlert, animated: true, completion: nil)
    }

} // Class

