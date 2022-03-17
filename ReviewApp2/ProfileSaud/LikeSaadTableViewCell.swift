//
//  LikeSaadTableViewCell.swift
//  Test22
//
//  Created by Amjad on 11/08/1443 AH.
//

import UIKit

class LikeSaadTableViewCell: UITableViewCell {

    @IBOutlet weak var PicFood1: UIImageView!
    @IBOutlet weak var PicFood: UIImageView!
    @IBOutlet weak var textRev: UILabel!
    @IBOutlet weak var NamePro: UILabel!
    @IBOutlet weak var Picsaad: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    func SettUUp(photo01 : UIImage ,Name01 : String , Text01: String , Pic10 : UIImage , Pic20 : UIImage){
        Picsaad.image = photo01
        NamePro.text = Name01
        textRev.text = Text01
        PicFood1.image = Pic10
        PicFood.image = Pic20
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
