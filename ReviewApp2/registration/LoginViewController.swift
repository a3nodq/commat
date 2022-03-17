//
//  LoginViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 11/03/2022.
//

import UIKit

class LoginViewController: UIViewController {

    var phonetxt = ""
    
    @IBOutlet weak var phonenumbalb: UILabel!
    
    @IBOutlet weak var paw: UILabel!
    
    @IBOutlet weak var loginLable: UILabel!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    
    @IBOutlet weak var nothaveaccLable: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        loginLable.text = NSLocalizedString("login", comment: "")
        phonenumbalb.text = NSLocalizedString("phonenumber", comment: "")
        paw.text = NSLocalizedString("password", comment: "")
        forgetPasswordButton.setTitle(NSLocalizedString("forgetpass", comment: ""), for: .normal)
        nothaveaccLable.text = NSLocalizedString("Donnthaveaccount", comment: "")
        signUpButton.setTitle(NSLocalizedString("signup", comment: ""), for: .normal)
//        loginButton.setTitle(NSLocalizedString("login", comment: ""), for: .normal)
        
    }
    
    @IBAction func forgetPasswordButton(_ sender: Any) {
        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        self.phonetxt = phoneNumberTextField.text!
        performSegue(withIdentifier: "loginbtn", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
                if let vcVerification = segue.destination as?
                    VerificationViewController{
                    vcVerification.PhoneData = self.phonetxt
        
            }
//        let vcVerification = segue.destination as? VerificationViewController{
//        vcVerification.PhoneData = self.phonetxt
//        }
        
////        if segue.identifier == "loginbtn"{
////
////        }
////        if segue.destination == VerificationViewController(){
////
////        }
//        if let vcVerification = segue.destination as?
//            VerificationViewController{
//            vcVerification.PhoneData = phoneNumberTextField.text
//
//    }
//
    }
    
}
