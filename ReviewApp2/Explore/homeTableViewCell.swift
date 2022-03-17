//
//  homeTableViewCell.swift
//  NewExplorePage
//
//  Created by AlanoudApple on 04/08/1443 AH.
//

import UIKit

class homeTableViewCell: UITableViewCell {

    @IBOutlet weak var personPhoto: UIImageView!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var time9: UILabel!
    @IBOutlet weak var foodPhoto: UIImageView!
//    @IBOutlet weak var userlbl: UILabel!
    @IBOutlet weak var lblDes: UILabel!
    @IBOutlet weak var more: UIButton!

    @IBOutlet weak var like: UIButton!
    @IBOutlet weak var comment: UIButton!
    @IBOutlet weak var bookMark: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func setupCell(photo: UIImage, username: String, time: String, food: UIImage,
                   description1: String) {
        personPhoto.image = photo
        personName.text = username
        time9.text = "\(time)"
        foodPhoto.image = food
        lblDes.text = description1
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }

}
