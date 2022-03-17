

import UIKit

class LikedTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageFood2: UIImageView!
    @IBOutlet weak var ImageFood3: UIImageView!
    @IBOutlet weak var LblRevi: UILabel!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var ImagePro: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func SettUp(photo : UIImage , Name : String ,ReviLbl : String , photo2 : UIImage , Photo3 : UIImage){
        ImagePro.image = photo
        UserName.text = Name
        LblRevi.text = ReviLbl
        ImageFood2.image = photo2
        ImageFood3.image = Photo3
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
