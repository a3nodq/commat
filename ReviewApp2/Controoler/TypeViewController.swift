//
//  TypeViewController.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 09/03/2022.
//

import UIKit

class TypeViewController: UIViewController {
    
    var  restaurantsArray: [Restaurant] = [
        
        Restaurant(namerestaurant: "New sea burger", typerestaurant: "American Food", locationrestaurant: "Riyadh Park, Riyadh ", image: "Rectangle4", rating: "3.4",km: "12",tag1: "Kids",tag2: "Music"),
        
        Restaurant(namerestaurant: "Jolly Donuts!", typerestaurant: "Dessert ", locationrestaurant: "Riyadh", image: "Rectangle 6", rating: "5",km: "12",tag1: "Kids",tag2: "Partition"),
        
        Restaurant(namerestaurant: "Donut land!", typerestaurant: "Dessert", locationrestaurant: "Riyadh", image: "Rectangle1", rating: "4.5",km: "12",tag1: "Kids",tag2: "Music"),
        
        Restaurant(namerestaurant: "Beef & Chicken", typerestaurant: "American Food", locationrestaurant: "King Fahd road, Riyadh ", image: "Rectangle2", rating: "3.5",km: "12",tag1: "Kids",tag2: "Music"),
        
        Restaurant(namerestaurant: "Easy Breakfast", typerestaurant: "Breakast/Lunch", locationrestaurant: "Imam bin Mohammad, Riyadh ", image: "Rectangle3", rating: "3.5",km: "12",tag1: "Kids",tag2: "Music"),
        
        Restaurant(namerestaurant: "Beef & Chicken", typerestaurant: "American Food", locationrestaurant: "Prince Turki road, Riyadh ", image: "Rectangle 5", rating: "3.5",km: "12",tag1: "Kids",tag2: "Music"),
        
        Restaurant(namerestaurant: "Cafe 260", typerestaurant: "Dessert", locationrestaurant: "Taif Street, Riyadh ", image: "Rectangle 7", rating: "3.5",km: "12",tag1: "Kids",tag2: "Celebration"),
        
        Restaurant(namerestaurant: "name", typerestaurant: "type", locationrestaurant: "Riyadh", image: "Rectangle1", rating: "3.5",km: "12",tag1: "Kids",tag2: "Celebration")
        
    ]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension TypeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomTableViewCell
        
        cell.myImage.image = UIImage(named: restaurantsArray[indexPath.row].image)
        cell.label1.text = restaurantsArray[indexPath.row].namerestaurant
        cell.label2.text = restaurantsArray[indexPath.row].typerestaurant
        cell.label4.text = restaurantsArray[indexPath.row].locationrestaurant
        cell.rating.text = restaurantsArray[indexPath.row].rating
        cell.KM.text = restaurantsArray[indexPath.row].km
        cell.tag1.text = restaurantsArray[indexPath.row].tag1
        cell.tag2.text = restaurantsArray[indexPath.row].tag2
        
        return cell
    }
  
}
    

