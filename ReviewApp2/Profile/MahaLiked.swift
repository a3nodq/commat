//
//  LikedPage.swift
//  Test22
//
//  Created by Amjad on 08/08/1443 AH.
//

import UIKit

class MahaLiked: UIViewController , UITableViewDelegate , UITableViewDataSource {
 
    

    @IBOutlet weak var tabelview: UITableView!
    
    var arrLiked = [Liked]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelview.delegate = self
        tabelview.dataSource = self
        
        arrLiked.append(Liked.init(Name: "Mary Jane", photo: UIImage(named: "prof")!, ReviLbl: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", photo2: UIImage(named: "pasta-1")!, Photo3: UIImage(named : "burgar3")!))
        
        arrLiked.append(Liked.init(Name: "Ethan William", photo: UIImage(named: "Ethan")!, ReviLbl: "I went to the restaurant with my friends for a party , in the beginng the service was great but when my friends start to come", photo2: UIImage(named: "pasta-1")!, Photo3: UIImage(named: "drink")!))
       
       
        arrLiked.append(Liked.init(Name: "Ross Smith", photo: UIImage(named: "ross-1")! , ReviLbl: "I have been to the restaurant multiples times for meet ups, celibrations , and just having a great time with friends and family", photo2: UIImage(named: "drink")!, Photo3: UIImage(named: "drink")!))
        
        arrLiked.append(Liked.init(Name: "Mary Jane", photo: UIImage(named: "prof")!, ReviLbl: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", photo2: UIImage(named: "pasta-1")!, Photo3: UIImage(named: "drink")!))
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrLiked.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celll = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! LikedTableViewCell
        let data = arrLiked[indexPath.row]
        celll.SettUp(photo: data.photo , Name: data.Name, ReviLbl: data.ReviLbl, photo2: data.photo2, Photo3: data.Photo3)
        return celll
    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 290
    }


}
struct Liked{
    
    let Name : String
    let photo : UIImage
    let ReviLbl: String
    let photo2 : UIImage
    let Photo3 : UIImage
}
