//
//  passwordResetViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 14/03/2022.
//

import UIKit

class passwordResetViewController: UIViewController {

    @IBOutlet weak var passwordresetLable: UILabel!
    @IBOutlet weak var sendlinkLabble: UILabel!
    @IBOutlet weak var phonenuberTextField: UITextField!
    @IBOutlet weak var phonenumberlable: UILabel!
    
    
    @IBOutlet weak var SendResetLinkButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordresetLable.text = NSLocalizedString("passreset", comment: "")
        phonenumberlable.text = NSLocalizedString("phonenumber", comment: "")
        sendlinkLabble.text = NSLocalizedString("sendLink", comment: "")
        phonenuberTextField.text = NSLocalizedString("phonenumber", comment: "")
        SendResetLinkButton.setTitle(NSLocalizedString("senflink", comment: ""), for: .normal)
        
    }
    
    @IBAction func SendResetLinkButton(_ sender: Any) {
    }
    

}
