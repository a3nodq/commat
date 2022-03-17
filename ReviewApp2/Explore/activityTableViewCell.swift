//
//  activityTableViewCell.swift
//  NewExplorePage
//
//  Created by AlanoudApple on 04/08/1443 AH.
//

import UIKit

class activityTableViewCell: UITableViewCell {

    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var personImage1: UIImageView!
    @IBOutlet weak var personName1: UILabel!
    @IBOutlet weak var personActivity1: UILabel!
    @IBOutlet weak var time1: UILabel!
    @IBOutlet weak var personImage2: UIImageView!
    @IBOutlet weak var PersonName2: UILabel!
    @IBOutlet weak var personActivity2: UILabel!
    @IBOutlet weak var time2: UILabel!
    @IBOutlet weak var personImage3: UIImageView!
    @IBOutlet weak var personName3: UILabel!
    @IBOutlet weak var personActivity3: UILabel!
    @IBOutlet weak var time3: UILabel!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func setupCell(
        photo1: UIImage,
        name1:String,
        activity1:String,
        time_1: String,
        photo2: UIImage,
        name2:String,
        activity2:String,
        time_2: String,
        photo3: UIImage,
        name3:String,
        activity3:String,
        time_3: String,
        day1 : String) {
        day.text = day1
        personImage1.image = photo1
        personName1.text = name1
        personActivity1.text = activity1
        time1.text = time_1
        personImage2.image = photo2
        PersonName2.text = name2
        personActivity2.text = activity2
        time2.text = time_2
//        personImage3.image = photo3
        personName3.text = name3
        personActivity3.text = activity3
        time3.text = time_3
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
