//
//  SaadLiked.swift
//  Test22
//
//  Created by Amjad on 10/08/1443 AH.
//

import UIKit

class SaadLiked: UIViewController , UITableViewDelegate , UITableViewDataSource{


    @IBOutlet weak var TableView: UITableView!
     var arrLik = [LikedSa]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        arrLik.append(LikedSa.init(photo01: UIImage(named: "prof")!, Name01: "Mary Jane", Text01: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", Pic10: UIImage(named: "pasta-1")!, Pic20: UIImage(named : "burgar3")!))
        
        arrLik.append(LikedSa.init(photo01: UIImage(named: "Ethan")!, Name01: "Ethan William", Text01: "I went to the restaurant with my friends for a party , in the beginng the service was great but when my friends start to come", Pic10: UIImage(named: "pasta-1")!, Pic20: UIImage(named: "drink")!))
        
        arrLik.append(LikedSa.init(photo01: UIImage(named: "ross-1")!, Name01: "Ross Smith", Text01: "I have been to the restaurant multiples times for meet ups, celibrations , and just having a great time with friends and family", Pic10: UIImage(named: "pasta-1")!, Pic20: UIImage(named: "piza")!))
        
        arrLik.append(LikedSa.init(photo01: UIImage(named: "prof")!, Name01: "Mary Jane", Text01: "The atmosphere of the restaurants was beautiful and the pasta was my favourite dish , and also tried their dessert but it was", Pic10: UIImage(named: "pasta-1")!, Pic20: UIImage(named: "pasta-1")!))
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrLik.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Homecell") as! LikeSaadTableViewCell
        let data = arrLik[indexPath.row]
        cell.SettUUp(photo01:data.photo01 , Name01: data.Name01, Text01: data.Text01, Pic10: data.Pic10, Pic20: data.Pic20)
        return cell
    }
    
    
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }

}
struct LikedSa{
    let photo01 : UIImage
    let Name01 : String
    let Text01 : String
    let Pic10 : UIImage
    let Pic20 : UIImage
    
}
