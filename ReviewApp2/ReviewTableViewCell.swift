//
//  ReviewTableViewCell.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 16/03/2022.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {

    var arrReviews = [explore]()
    
    @IBOutlet weak var accountname: UILabel!
   
    @IBOutlet weak var accountphoto: UIImageView!
    @IBOutlet weak var msgbtn: UIButton!
    @IBOutlet weak var bookmarkbtn: UIButton!
    @IBOutlet weak var heartbtn: UIButton!
    
    @IBOutlet weak var Comment: UILabel!
    @IBOutlet weak var reviewimage: UIImageView!
    @IBOutlet weak var timereview: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupreviewtable(account:String ,userphoto:UIImage,comment:String,reviephoto:UIImage,timerevie:String ){
        
        accountname.text = account
        
        accountphoto.image = userphoto
        Comment.text = comment
        reviewimage.image = reviephoto
        timereview.text = timerevie
        
    }
}

