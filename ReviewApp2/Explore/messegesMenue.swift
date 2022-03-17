//
//  messegesMenue.swift
//  NewExplorePage
//
//  Created by AlanoudApple on 04/08/1443 AH.
//

import UIKit

class messegesMenue: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var arrListOfMesseges = [list]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        arrListOfMesseges.append(list.init(name: "Saud", messege: "Great , Thank you 💕", time: "18s", photo: UIImage(named: "saud")!))
        arrListOfMesseges.append(list.init(name: "Logan", messege: "What’s the cafe called?", time: "13m", photo: UIImage(named: "logan")!))
        arrListOfMesseges.append(list.init(name: "Maryam", messege: "It was so good!!!", time: "24m", photo: UIImage(named: "maryam")!))

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrListOfMesseges.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listOfMesseges") as! messegeTableViewCell
        let data = arrListOfMesseges[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, messege: data.messege, time: data.time)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell index = \(indexPath.row)")
    }
    

}
struct list {
    let name: String
    let messege :String
    let time: String
    let photo: UIImage
}


