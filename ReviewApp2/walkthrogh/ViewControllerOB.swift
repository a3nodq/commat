//
//  ViewController.swift
//  Walkthrough
//
//  Created by bushra  on 03/08/1443 AH.
//

import UIKit

class ViewControllerOB: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    
    
var userPreerences = [""]
    
    @IBOutlet weak var liblWelcome: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
//    var arryOFitems: [items] = [items(photo: "item1"),
//                                items(photo: "item2"),
//                                items(photo: "item3"),
//                                items(photo: "item4"),
//                                items(photo: "item5"),
//                                items(photo: "item6")]
    
    
    var arryOFitems : [items] =  [
        
        
       items (photo:  UIImage(named: "item1")!),
       items (photo:  UIImage(named: "item2")!),
       items (photo:  UIImage(named: "item3")!),
       items (photo:  UIImage(named: "item4")!),
       items (photo:  UIImage(named: "item5")!),
       items (photo:  UIImage(named: "item6")!),
       
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.allowsMultipleSelection = true
        liblWelcome.text = "Choose your favorites!"
        
        
        
//        arryOFitems.append(items(photo: UIImage(named: "item1")!))
//        arryOFitems.append(items(photo: UIImage(named: "item2")!))
//        arryOFitems.append(items(photo: UIImage(named: "item3")!))
//        arryOFitems.append(items(photo: UIImage(named: "item4")!))
//        arryOFitems.append(items(photo: UIImage(named: "item5")!))
//        arryOFitems.append(items(photo: UIImage(named: "item1")!))
        
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arryOFitems.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        
        let item = arryOFitems[indexPath.row]
        cell.setupCell(images: item.photo)
//        cell.liblWelcome(l)
        return cell
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        
        let cell = collectionView.cellForItem(at: indexPath) as! ItemCollectionViewCell
        
        print("hi")
        
        cell.backgroundColor = UIColor.systemTeal
//        cell.layer.cornerRadius = 100
        cell.ImageItem.layer.borderWidth = 0.50
        
        if indexPath.row == 0 {
            userPreerences.append("cofee")
//            cell.ImageItem.backgroundColor = .red
//            cell.ImageItem.image=UIImage(systemName: "person")!
//            cell.ImageItem.layer.borderColor = UIColor.red.cgColor
            cell.ImageItem.layer.borderWidth = -1
        } else if indexPath.row == 1 {
            userPreerences.append("Bakery")
        } else if indexPath.row == 2 {
            userPreerences.append("Dessert")
        } else if indexPath.row == 3 {
            userPreerences.append("Cakes")
        } else if indexPath.row == 4 {
            userPreerences.append("Healthy food")
        } else if indexPath.row == 5 {
            userPreerences.append(" Ice cream")
        }
        
        print(userPreerences)
    }
    
    
    
    
    
    
    
    
}

