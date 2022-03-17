//
//  SignupViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 11/03/2022.
//

import UIKit

class SignupViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource  ,UITextFieldDelegate{
    
    

    let pickerCity = UIPickerView()
    var arrCity = ["Riyadh", "Makkah" , "Jeddah", "Dmamm"]
    var cuurentindex = 0
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var phonenumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var signupLable: UILabel!
    @IBOutlet weak var agreeLable: UILabel!
    
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var Skipasvistorbutton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var alreafyhvacclable: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signupLable.text = NSLocalizedString("signup", comment: "")
        usernameTextField.text = NSLocalizedString("username", comment: "")
        phonenumberTextField.text = NSLocalizedString("phonenumber", comment: "")
        passwordTextField.text = NSLocalizedString("password", comment: "")
        password2TextField.text = NSLocalizedString("password2", comment: "")
        Skipasvistorbutton.setTitle(NSLocalizedString("skipvistor", comment: ""), for: .normal)
//        agreeLable.text = NSLocalizedString("agreetothe", comment: "")
//        termsButton.setTitle(NSLocalizedString("termsandcondtions", comment: ""), for: .normal)
        alreafyhvacclable.text =  NSLocalizedString("dohavealreadyacc", comment: "")
        loginButton.setTitle(NSLocalizedString("login", comment: ""), for: .normal)
//        signupButton.setTitle(NSLocalizedString("signup", comment: ""), for: .normal)
        
        pickerCity.delegate = self
        pickerCity.dataSource = self
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(closepicker))
        toolBar.setItems([btnDone], animated: true)
        
        location.inputView = pickerCity
        location.inputAccessoryView = toolBar
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

   
    @IBAction func loginbutton(_ sender: Any) {
    }
    
    @IBAction func signupbutton(_ sender: Any) {
    }
    @IBAction func vistobutton(_ sender: Any) {
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrCity.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrCity[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cuurentindex = row
        location.text = arrCity[row]
    }
    
    @objc func closepicker(){
        location.text = arrCity[cuurentindex]
        view.endEditing(true)
    }
}
