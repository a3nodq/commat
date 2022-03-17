//
//  SettingViewController.swift
//  ReviewApp
//
//  Created by Waad Alsaif on 08/03/2022.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var accountname: UILabel!
    
    @IBOutlet weak var EditProfileButton: UIButton!
    @IBOutlet weak var changelanguagebtn: UIButton!
    @IBOutlet weak var help: UILabel!
    @IBOutlet weak var sec: UILabel!
    @IBOutlet weak var pref: UILabel!

   
    
    @IBOutlet weak var rankLable: UIButton!
    @IBOutlet weak var passwordReLable: UIButton!
    @IBOutlet weak var historylable: UILabel!
    @IBOutlet weak var languagelable: UILabel!
    @IBOutlet weak var notificationLAble: UILabel!
    @IBOutlet weak var langLable: UILabel!
    override func viewDidLoad() {
    super.viewDidLoad()
    
    help.layer.masksToBounds = true
            help.layer.cornerRadius = 5
    
            sec.layer.masksToBounds = true
            sec.layer.cornerRadius = 5
    
            pref.layer.masksToBounds = true
            pref.layer.cornerRadius = 5
        accountname.text = NSLocalizedString("maha", comment: "")
        EditProfileButton.setTitle(NSLocalizedString("editpro", comment: ""), for: .normal)
        languagelable.text = NSLocalizedString("Lang", comment: "")
        notificationLAble.text = NSLocalizedString("notifications", comment: "")
        historylable.text = NSLocalizedString("history", comment: "")
        pref.text = NSLocalizedString("prefernce", comment: "")
        sec.text = NSLocalizedString("security", comment: "")
        langLable.text = NSLocalizedString("english", comment: "")
        
        
        
    
    
    }
    

    @IBAction func changelanguagebtn(_ sender: Any) {
        
        let currentLang = Locale.current.languageCode
        let newLAnguage = currentLang == "en" ? "ar" : "en"
        
        UserDefaults.standard.setValue([newLAnguage], forKey: "AppleLanguages")
       
        exit(0)
    }
    
    
    @IBAction func EditProfileButton(_ sender: Any) {
    }
    
}
