//
//  exploreViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 14/03/2022.
//

import UIKit

class exploreViewController:
    UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate,UITableViewDataSource {
        
    @IBOutlet weak var helloLable: UILabel!
    @IBOutlet weak var homeTableView: UITableView!
        @IBOutlet weak var resturant: UICollectionView!
        
        
        var arrResturant = [collection]()
        var arrhome = [home]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
//            helloLable.text = NSLocalizedString("hello", comment: "")
    //        homeTableView.delegate = self
    //        homeTableView.dataSource = self
            resturant.delegate = self
            resturant.dataSource = self
       isAccessibilityElement = true
//            accessibilityLabel = " "\()""\
            
            arrResturant.append(collection.init(photo: UIImage (named: "American")!))
            arrResturant.append(collection.init(photo: UIImage (named: "Asian")!))
            arrResturant.append(collection.init(photo: UIImage (named: "Cafe")!))
            arrResturant.append(collection.init(photo: UIImage (named: "traditional")!))
            arrhome.append(home.init(profilePhoto: UIImage (named: "saraAhmed")!, username: "Sara Ahmad", time: "20m", picture: UIImage(named: "french")!, description: "I went to Toast 4 u with my friends last weekend and it was such a nice place to go with.."))
            arrhome.append(home.init(profilePhoto: UIImage (named: "mohammed")!, username: "Mohammed Ali", time: "1h", picture: UIImage(named: "egg")!, description: "A few days ago I tried this new cafe/breakfast and I got french toast and black.."))
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrhome.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! homeTableViewCell
            let data1 = arrhome[indexPath.row]
            cell1.setupCell(photo: data1.profilePhoto, username: data1.username, time: data1.time, food: data1.picture, description1: data1.description)
            cell1.like.tag = indexPath.row
            cell1.like.addTarget(self, action: #selector(like(sender:)), for: .touchUpInside)
            
            return cell1
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 350
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("cell index = \(indexPath.row)")
        }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return arrResturant.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"resturantCell" , for: indexPath) as! categoryCollectionViewCell
            let rest = arrResturant[indexPath.row]
            cell.setupCell(photo: rest.photo)
            return cell
        }
        @objc
        func like (sender: UIButton){
            print ("button index =\(sender.tag)")
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
        


    }
    struct collection {
        let photo : UIImage
    }
    struct home{
        let profilePhoto :UIImage
        let username : String
        let time : String
        let picture : UIImage
        let description : String
    }

