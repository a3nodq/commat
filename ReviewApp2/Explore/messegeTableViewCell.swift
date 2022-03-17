//
//  messegeTableViewCell.swift
//  NewExplorePage
//
//  Created by AlanoudApple on 04/08/1443 AH.
//

import UIKit

class messegeTableViewCell: UITableViewCell {

    @IBOutlet weak var namePhoto: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLastMessege: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(photo: UIImage, name:String, messege:String, time: String) {
        namePhoto.image = photo
        lblName.text = name
        lblLastMessege.text = messege
        lblTime.text = "\(time)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
