
import UIKit

class SaadTableViewCell: UITableViewCell {

    @IBOutlet weak var Image2: UIImageView!
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var TexstSaad: UILabel!
    @IBOutlet weak var NameSaad: UILabel!
    @IBOutlet weak var PicSaad: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func SetUPP(photo : UIImage , Name : String ,Text : String , Pic1 : UIImage , Pic2 : UIImage ){
        PicSaad.image = photo
        NameSaad.text = Name
        TexstSaad.text = Text
        Image1.image = Pic1
        Image2.image = Pic2
        
        
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
