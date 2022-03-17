//
//  ReviewsTableViewCell.swift
//  Test22
//
//  Created by Amjad on 09/08/1443 AH.
//

import UIKit

class ReviewsTableViewCell: UITableViewCell {

    @IBOutlet weak var RevImage: UIImageView!
    @IBOutlet weak var RevLbl: UILabel!
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var Pimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(photo : UIImage, name: String ,textRev : String , imageMnue : UIImage){
        
        Pimage.image = photo
        NameLbl.text = name
        RevLbl.text = textRev
        RevImage.image = imageMnue
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
