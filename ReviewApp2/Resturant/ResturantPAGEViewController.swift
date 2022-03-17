//
//  ResturantPAGEViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 12/03/2022.
//

import UIKit

class ResturantPAGEViewController: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout , UITableViewDelegate, UITableViewDataSource {
  
    

    @IBOutlet weak var reviewtableview: UITableView!
    

    @IBOutlet weak var menuCollection: UICollectionView!
    @IBOutlet weak var SCROLLVIEW: UIScrollView!
    
    var arrReview = [Review]()
    
    var arrMe = [menu]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuCollection.delegate = self
        menuCollection.dataSource = self
        reviewtableview.delegate = self
        reviewtableview.dataSource = self
        
        arrMe.append(menu(photo: UIImage(named: "Menu1")!))
        arrMe.append(menu(photo: UIImage(named: "Menu2")!))
        arrMe.append(menu(photo: UIImage(named: "Menu3")!))
        arrMe.append(menu(photo: UIImage(named: "Menu4")!))
        arrMe.append(menu(photo: UIImage(named: "french")!))
        arrMe.append(menu(photo: UIImage(named: "AsiaFood")!))
        arrMe.append(menu(photo: UIImage(named: "BeefChicken")!))
        arrMe.append(menu(photo: UIImage(named: "burgeer")!))
        
        
        
//        arrReview.append(Review.init())
//
        arrReview.append(Review.init(userphoto: UIImage(named: "ali")! , usernamee: "Ali Mohammed", dateReview: "1 month ago", ReviewImage: UIImage(named:"Salad")!, likenumer: 12, commentRev: "I like this salad and the aura of the resturant was amaizing"))
        
        arrReview.append(Review.init(userphoto: UIImage(named: "saad")!, usernamee: "Saad Khaled", dateReview: "1 Month ago", ReviewImage: UIImage(named: "Menu2")!, likenumer: 120, commentRev: "the steak was amaizing"))

        arrReview.append(Review.init(userphoto: UIImage(named: "maha")!, usernamee: "Maha Mubarak", dateReview: "Two Weeks ago", ReviewImage: UIImage(named: "Rectangle")!, likenumer: 400, commentRev: "I like the food the aura of the resturant i will come again"))

        arrReview.append(Review.init(userphoto: UIImage(named: "Ethan")!, usernamee: "Ethan", dateReview: "1 month sgo", ReviewImage: UIImage(named: "Pasta")!, likenumer: 394, commentRev: "the best pasta i ever traied"))
//
        
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrMe.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = menuCollection.dequeueReusableCell(withReuseIdentifier: "menucell", for: indexPath) as! MenuCollectionViewCell
        let menuphoto = arrMe[indexPath.row]
        cell.setupCell(photo: menuphoto.photo )
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.4 , height: self.view.frame.width * 0.4 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    //Review Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrReview.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let RevCell = tableView.dequeueReusableCell(withIdentifier: "reviewcell") as! ReviewCellsTableViewCell
        
        let rev = arrReview[indexPath.row]
       
        RevCell.setupCellTable(prophoto: rev.userphoto, like: rev.likenumer, comm: rev.commentRev, reviphoto: rev.ReviewImage, date: rev.dateReview, name: rev.usernamee)
               return RevCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        349
    }
    
}

struct menu{
    let photo : UIImage
}

struct Review{
    let userphoto : UIImage
    let usernamee : String
    let dateReview : String
  
    let ReviewImage:UIImage
    let likenumer: Int
    let commentRev : String

}

