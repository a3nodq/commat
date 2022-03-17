
import UIKit

class MahaProfileViewController: UIViewController {
    @IBOutlet weak var Liked: UIView!
    @IBOutlet weak var Saved: UIView!
    @IBOutlet weak var Reviews: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var views :[UIView] = []
    var counter = 0
    
    override func viewDidLoad() {

        super.viewDidLoad()

       views = [Reviews,Saved,Liked]

        // Do any additional setup after loading the view.
       segmentedControl.selectedSegmentIndex = counter


        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(handlegesture(gesture:)))
        swipeleft.direction = .left
        self.view.addGestureRecognizer(swipeleft)

       let swiperight = UISwipeGestureRecognizer(target: self, action: #selector(handlegesture(gesture:)))

    swiperight.direction = .right
     self.view.addGestureRecognizer(swiperight)

    self.view.bringSubviewToFront(Reviews)

        // Do any additional setup after loading the view.
    }
    @objc func handlegesture(gesture:UISwipeGestureRecognizer){
            if counter >= 0 && counter < views.count{
                if gesture.direction == UISwipeGestureRecognizer.Direction.right
                {
                    if counter != 0{
                        counter = counter-1
                        self.view.bringSubviewToFront(views[counter])
                        segmentedControl.selectedSegmentIndex = counter

                    }
                }
                if gesture.direction == UISwipeGestureRecognizer.Direction.left{
                    if counter != views.count-1
                    {
                        counter = counter+1
                        segmentedControl.selectedSegmentIndex = counter
                        self.view.bringSubviewToFront(views[counter])
                    }
                }
            }

        }

    @IBAction func segDidChanged(_ sender: UISegmentedControl) {

//        switch segmentedControl.selectedSegmentIndex {
//        case 0:
//            Reviews.isHidden = true
//            Reviews.alpha = 1
//            Saved.isHidden = false
//            Saved.alpha = 0
//            Liked.isHidden = false
//            Liked.alpha = 0
//            print("-----0")
//        case 1:
//            Reviews.isHidden = false
//            Reviews.alpha = 0
//            Saved.isHidden = true
//            Saved.alpha = 1
//            Liked.isHidden = false
//            Liked.alpha = 0
//            print("-----1")
//        case 2:
//            Reviews.isHidden = false
//            Reviews.alpha = 0
//            Saved.isHidden = false
//            Saved.alpha = 0
//            Liked.isHidden = true
//            Liked.alpha = 1
//            print("-----2")
//        default:
//            break;
//    }
        
        if sender.selectedSegmentIndex == 0{
            Reviews.alpha = 1
            Saved.alpha = 0
            Liked.alpha = 0
        }else if sender.selectedSegmentIndex == 1{
            Reviews.alpha = 0
            Saved.alpha = 1
            Liked.alpha = 0
        }else if sender.selectedSegmentIndex == 2 {
            Reviews.alpha = 0
            Saved.alpha = 0
            Liked.alpha = 1
        }
    }


}

