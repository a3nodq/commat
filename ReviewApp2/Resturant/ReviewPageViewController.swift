//
//  ReviewPageViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 14/03/2022.
//

import UIKit

class ReviewPageViewController: UIViewController {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var datelable: UILabel!
    @IBOutlet weak var comentlable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = NSLocalizedString("ethan", comment: "")
        datelable.text = NSLocalizedString("onemonth", comment: "")
        comentlable.text = NSLocalizedString("comment", comment: "")
    }
    

  
}
