
import UIKit

class SaveTableViewCell: UITableViewCell {

    @IBOutlet weak var typeFood: UILabel!
    @IBOutlet weak var Butt2: UIButton!
    @IBOutlet weak var Butt1: UIButton!
    @IBOutlet weak var Location: UILabel!
    @IBOutlet weak var LblName: UILabel!
    @IBOutlet weak var imageFood: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setUpCell(photo : UIImage , Name : String ,Loc : String , item : String){
        imageFood.image = photo
        LblName.text = Name
        Location.text = Loc
        typeFood.text = item
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
