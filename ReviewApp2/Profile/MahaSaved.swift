

import UIKit

class MahaSaved: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var tabelView: UITableView!
    
    var arrSaved = [Save]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        tabelView.delegate = self
        tabelView.dataSource = self
        
        arrSaved.append(Save.init(Name: "Donut land!", photo: UIImage(named: "dountLand")!, Loc: "Riyadh Park, Riyadh ", item:"Dessert"))
        
        arrSaved.append(Save.init(Name: "New sea burger", photo: UIImage(named: "burgeer")!, Loc: "Riyadh Park, Riyadh ", item:"American Food"))
        
        arrSaved.append(Save.init(Name: "Beef & Chicken", photo: UIImage(named: "burger2")!, Loc: "Riyadh Park, Riyadh ", item:"American Food"))
        
        arrSaved.append(Save.init(Name: "Easy Breakfast", photo: UIImage(named: "AsiaFood")!, Loc: "Imam bin Mohammad, Riyadh ", item:"Breakast/Lunch"))
        
        arrSaved.append(Save.init(Name: "Jolly Donuts!", photo: UIImage(named: "dounat")!, Loc: "Olaya Street, Riyadh  ", item:"Dessert"))
        
        arrSaved.append(Save.init(Name: "Beef & Chicken", photo: UIImage(named: "BeefChicken")!, Loc: "Prince Turki road, Riyadh ", item:"American Food"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSaved.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! SaveTableViewCell
        let data = arrSaved[indexPath.row]
        cell.setUpCell(photo: data.photo, Name: data.Name, Loc: data.Loc, item: data.item)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

  
}
struct Save{
    let Name : String
    let photo : UIImage
    let Loc : String
    let item : String
}
