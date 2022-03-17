

import UIKit

class MahaReviewPage: UIViewController , UITableViewDelegate , UITableViewDataSource{

    

    @IBOutlet weak var tabelView: UITableView!
    var arrRev1 = [Reviews1]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        tabelView.delegate = self
        tabelView.dataSource = self
      
        
        arrRev1.append(Reviews1.init(photo: UIImage(named: "maha")!, name: "Maha", textRev: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", imageMune: UIImage(named: "piza")!))
        
        arrRev1.append(Reviews1.init(photo: UIImage(named: "maha")!, name: "Maha", textRev: "I went to the restaurant with my friends for a party , in the beginng the service was great but when my friends start to come", imageMune: UIImage(named: "pasta-1")!))
        
        arrRev1.append(Reviews1.init(photo: UIImage(named: "maha")!, name: "Maha", textRev: "I have been to the restaurant multiples times for meet ups, celibrations , and just having a great time with friends and family", imageMune: UIImage(named: "drink")!))
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRev1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCile") as! ReviewsTableViewCell
        let data = arrRev1[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, textRev: data.textRev, imageMnue: data.imageMune)
        return cell
    

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280
    }

}
struct Reviews1{
    let photo : UIImage
    let name : String
    let textRev : String
    let imageMune : UIImage
}

