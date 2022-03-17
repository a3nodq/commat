//
//  SaadReviews.swift
//  Test22
//
//  Created by Amjad on 10/08/1443 AH.
//

import UIKit

class SaadReviews: UIViewController , UITableViewDelegate , UITableViewDataSource {
   
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrSaadReviw = [SaadR]()
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        arrSaadReviw.append(SaadR.init(photo: UIImage(named: "saad")!, Name: "Saad Omar", Text: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", Pic1: UIImage(named: "Rectangle")!, Pic2: UIImage(named: "pasta-1")!))
        
        
        arrSaadReviw.append(SaadR.init(photo: UIImage(named: "saad")!, Name: "Saad Omar", Text: "I went to this new place thats arcoss my house, i was surprised on how convenient it is!!", Pic1: UIImage(named: "Rectangle")!, Pic2: UIImage(named: "drink")!))
        
        
        arrSaadReviw.append(SaadR.init(photo: UIImage(named: "saad")!, Name: "Saad Omar", Text: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", Pic1: UIImage(named: "Rectangle")!, Pic2: UIImage(named: "pasta-1")!))
        
        arrSaadReviw.append(SaadR.init(photo: UIImage(named: "saad")!, Name: "Saad Omar", Text: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", Pic1: UIImage(named: "Rectangle")!, Pic2: UIImage(named: "pasta-1")!))
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSaadReviw.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! SaadTableViewCell
        let data = arrSaadReviw[indexPath.row]
        
        cell.SetUPP(photo: data.photo, Name: data.Name, Text: data.Text, Pic1: data.Pic1, Pic2: data.Pic1)
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
        
    }

}
struct SaadR{
    let photo : UIImage
    let Name : String
    let Text: String
    let Pic1 : UIImage
    let Pic2 : UIImage
}
