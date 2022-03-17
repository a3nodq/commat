//
//  activityTableViewViewController.swift
//  NewExplorePage
//
//  Created by AlanoudApple on 04/08/1443 AH.
//

import UIKit

class activityTableViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var activityTableView:UITableView!
    var arrListOfActivity = [activity]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        activityTableView.delegate = self
        activityTableView.dataSource = self
        
        
        arrListOfActivity.append(activity.init(day: "new", name1: "Saud", activity1: "Likes your post", time1: "2min", photo1:UIImage(named: "saud")!, name2: "Manal", activity2: "Reply your post.", time2: "1h", photo2: UIImage(named: "manal")!, name3: "Ali", activity3: "suggest you a new retueant", time3: "12h", photo3: UIImage(named: "ali")!))
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrListOfActivity.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "activityCell") as! activityTableViewCell
        let data = arrListOfActivity[indexPath.row]
        cell.setupCell(photo1: data.photo1, name1: data.name1, activity1: data.activity1, time_1: data.time1, photo2: data.photo2, name2: data.name2, activity2: data.activity2, time_2: data.time2, photo3: data.photo3, name3: data.name3, activity3: data.activity3, time_3: data.time3, day1: data.day)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index = \(indexPath.row)")
}
}

struct activity {
    let day : String
    let name1 : String
    let activity1 : String
    let time1 : String
    let photo1 : UIImage
    let name2 : String
    let activity2 : String
    let time2 : String
    let photo2 : UIImage
    let name3 : String
    let activity3 : String
    let time3 : String
    let photo3 : UIImage
}
