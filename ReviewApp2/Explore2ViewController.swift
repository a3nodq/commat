//
//  Explore2ViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 16/03/2022.
//

import UIKit

class Explore2ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource, UICollectionViewDelegate,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
 
    
 
    @IBOutlet weak var CollectionOFRest: UICollectionView!
    
    @IBOutlet weak var reviewTable: UITableView!
    
    @IBOutlet weak var nearbycoll: UICollectionView!
    
    var arrReviews = [explore]()
    var collection = [type]()
    var nearcoll = [near]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionOFRest.dataSource = self
        CollectionOFRest.delegate = self
       
        reviewTable.delegate = self
        reviewTable.dataSource = self
        
//        nearbycoll.dataSource = self
//        nearbycoll.delegate = self
//
        arrReviews.append(explore.init(profilePhoto: UIImage (named: "saraAhmed")!, username: "Sara Ahmad", time: "20m", picture: UIImage(named: "french")!, description: "I went to Toast 4 u with my friends last weekend and it was such a nice place to go with.."))
        arrReviews.append(explore.init(profilePhoto: UIImage (named: "mohammed")!, username: "Mohammed Ali", time: "1h", picture: UIImage(named: "egg")!, description: "A few days ago I tried this new cafe/breakfast and I got french toast and black.."))
    
        collection.append(type.init(photores: UIImage (named: "American")!, lablename: "Amrican"))
        collection.append(type.init(photores: UIImage (named: "Asian")!, lablename: "Asian"))
        collection.append(type.init(photores: UIImage (named: "traditional")!, lablename: "traditional"))
        collection.append(type.init(photores: UIImage (named: "Cafe")!, lablename: "Cafe"))
        
        
//        nearcoll.append(near.init(photonearby: UIImage(named: "burger")!))
//        nearcoll.append(near.init(photonearby: UIImage(named: "french")!))
//        nearcoll.append(near.init(photonearby: UIImage(named: "burger")!))
//        nearcoll.append(near.init(photonearby: UIImage(named: "Rectangle 5")!))
        
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrReviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellreview  = tableView.dequeueReusableCell(withIdentifier:  " ReviewCell2") as! ReviewTableViewCell
        let Review = arrReviews[indexPath.row]
        cellreview.setupreviewtable(account: Review.username, userphoto: Review.profilePhoto, comment: Review.description, reviephoto: Review.picture, timerevie: Review.time)
        cellreview.heartbtn.tag = indexPath.row
        cellreview.heartbtn.addTarget(self, action: #selector(addToFav(sender:)), for: .touchUpInside)
        return cellreview
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 500
    }
@objc
    func addToFav(sender: UIButton){
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
    
    
    
    ///Collecion
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collection.count
    }
  
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellcoll = collectionView.dequeueReusableCell(withReuseIdentifier: "resturantCell", for: indexPath) as! TypeOFCollectionViewCell
        let data = collection[indexPath.row]
        cellcoll.setupcollection(name: data.lablename, photo: data.photores)
      
        return cellcoll
   
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.4 , height: self.view.frame.width * 0.4)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0.1
    }
    
    
}

struct explore {
    let profilePhoto :UIImage
    let username : String
    let time : String
    let picture : UIImage
    let description : String
}
struct type{
    let photores: UIImage
    let lablename: String
}
struct near{
    let photonearby : UIImage
}
