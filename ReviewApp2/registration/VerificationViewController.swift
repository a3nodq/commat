//
//  VerificationViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 14/03/2022.
//

import UIKit

class VerificationViewController: UIViewController {

    var PhoneData = ""
    @IBOutlet weak var numberLAble: UILabel!
   
    @IBOutlet weak var codeLable: UILabel!
   
    @IBOutlet weak var verificationLable: UILabel!
   
    @IBOutlet weak var codeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLAble.text = PhoneData

//        loginButton.setTitle(NSLocalizedString("login", comment: ""), for: .normal)
        codeLable.text = NSLocalizedString("codesent", comment: "")
        verificationLable.text = NSLocalizedString("verification", comment: "")
        codeTextField.text = NSLocalizedString("code", comment: "")
        
    }
    

  
    
}
