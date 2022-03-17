//
//  ViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 09/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var llogInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        llogInButton.setTitle(NSLocalizedString("login", comment: ""), for: .normal)
        signUpButton.setTitle(NSLocalizedString("signup", comment: ""), for: .normal)
    }

    @IBAction func llogInButton(_ sender: Any) {
        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
    }
}

