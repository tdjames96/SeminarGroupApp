//
//  QuestionnaireViewController.swift
//  SS
//
//  Created by user211074 on 3/25/22.
//

import UIKit
import Parse

class QuestionnaireViewController: UIViewController {

    @IBOutlet weak var collegeText: UITextField!
    @IBOutlet weak var accountBalanceText: UITextField!
    @IBOutlet weak var incomeText: UITextField!
    @IBOutlet weak var expensesText: UITextField!
    @IBOutlet weak var debtText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sumbitButton(_ sender: Any) {
        let user =  PFUser.current()!
     
        
        user["collegeName"] = collegeText.text!
        user["accountBalance"] = accountBalanceText.text!
        user["income"] = incomeText.text!
        user["expenses"] = expensesText.text!
        user["debtAmount"] = debtText.text!
        
        
        user.saveInBackground { (success , error) in
            if success{
                print("Saved!")
                self.performSegue(withIdentifier: "confirmSegue" , sender: nil)
                
            }else{
                print("error!")
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
