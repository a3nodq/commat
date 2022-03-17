//
//  newPasswordViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 14/03/2022.
//

import UIKit

class newPasswordViewController: UIViewController {

    @IBOutlet weak var newPaaswordLable: UILabel!
    @IBOutlet weak var passwordLable: UILabel!
    @IBOutlet weak var enterpassTestField: UITextField!
   
    
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var ConfirmPasstextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newPaaswordLable.text = NSLocalizedString("newpass", comment: "")
        passwordLable.text = NSLocalizedString("password", comment: "")
        enterpassTestField.text = NSLocalizedString("enternewpass", comment: "")
        ConfirmPasstextField.text = NSLocalizedString("confirpass", comment: "")
        ResetButton.setTitle(NSLocalizedString("reset", comment: ""), for: .normal)
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
