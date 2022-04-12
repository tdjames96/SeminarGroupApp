//
//  ViewController.swift
//  SS
//
//  Created by user211074 on 2/20/22.
// Controller for login page

import UIKit
import Parse

class ViewController: UIViewController {
    
    @IBOutlet weak var passwirdfield: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func onSign(_ sender: Any) {
        let user = PFUser()
        
        user.username = emailField.text
        user.password = passwirdfield.text
         
        let password = passwirdfield.text!
        let email = emailField.text!
        
        PFUser.logInWithUsername(inBackground: email, password: password) { (user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue" , sender: nil)
            } else{
                print("Error: \(error?.localizedDescription)")
                
                
            }
            
        }
         }
}
 
