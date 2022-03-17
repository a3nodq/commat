//
//  CustomTableViewCell.swift
//  TableViewTest
//
//  Created by bushra  on 27/07/1443 AH.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
//    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var rating: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var tag1: UILabel!
    @IBOutlet weak var tag2: UILabel!
    
    @IBOutlet weak var KM: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tag1.layer.masksToBounds = true
        tag1.layer.cornerRadius = 7
        
        tag2.layer.masksToBounds = true
        tag2.layer.cornerRadius = 7
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
