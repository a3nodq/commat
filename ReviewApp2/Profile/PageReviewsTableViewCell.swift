
import UIKit

class PageReviewsTableViewCell: UITableViewCell {

    @IBOutlet weak var PicFood1: UIImageView!
    @IBOutlet weak var PicFood2: UIImageView!
    @IBOutlet weak var TexstRev: UILabel!
    @IBOutlet weak var LabName: UILabel!
    @IBOutlet weak var PicPro: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func SetUP2(photo : UIImage , Name : String , texstReviwes : String , photo0 : UIImage , photo1 : UIImage){
        
        PicPro.image = photo
        LabName.text = Name
        TexstRev.text = texstReviwes
        PicFood1.image = photo0
        PicFood2.image = photo1
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
