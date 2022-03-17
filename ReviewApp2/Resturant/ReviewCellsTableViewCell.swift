//
//  ReviewCellsTableViewCell.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 16/03/2022.
//

import UIKit

class ReviewCellsTableViewCell: UITableViewCell {

    @IBOutlet weak var numberlikes: UILabel!
    
    @IBOutlet weak var comment: UILabel!
    @IBOutlet weak var reviewphoto: UIImageView!
    @IBOutlet weak var commentdate: UILabel!
    
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var profilePhoto: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCellTable(prophoto:UIImage, like:Int,comm:String,reviphoto:UIImage,date:String,name:String){
        

        numberlikes.text = "\(like)"
        comment.text = comm
        reviewphoto.image = reviphoto
        commentdate.text = date
        username.text = name
        profilePhoto.image = prophoto
        
    }

}
