//
//  PageSaadViewController.swift
//  Test22
//
//  Created by Amjad on 10/08/1443 AH.
//

import UIKit

class PageSaadViewController: UIViewController {
    @IBOutlet weak var LikSaad: UIView!
    @IBOutlet weak var RevSaad: UIView!
    @IBOutlet weak var ButttonFollow: UIButton!
    @IBOutlet weak var SegmentedController: UISegmentedControl!
    
    var viewsSaad :[UIView] = []
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButttonFollow.layer.cornerRadius = 8
        viewsSaad = [RevSaad,LikSaad]

        
        SegmentedController.selectedSegmentIndex = counter
       
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(handlegesture(gesture:)))
        swipeleft.direction = .left
        self.view.addGestureRecognizer(swipeleft)

       let swiperight = UISwipeGestureRecognizer(target: self, action: #selector(handlegesture(gesture:)))

    swiperight.direction = .right
     self.view.addGestureRecognizer(swiperight)

    self.view.bringSubviewToFront(RevSaad)

    }
    @objc func handlegesture(gesture:UISwipeGestureRecognizer){
            if counter >= 0 && counter < viewsSaad.count{
                if gesture.direction == UISwipeGestureRecognizer.Direction.right
                {
                    if counter != 0{
                        counter = counter-1
                        self.view.bringSubviewToFront(viewsSaad[counter])
                        SegmentedController.selectedSegmentIndex = counter

                    }
                }
                if gesture.direction == UISwipeGestureRecognizer.Direction.left{
                    if counter != viewsSaad.count-1
                    {
                        counter = counter+1
                        SegmentedController.selectedSegmentIndex = counter
                        self.view.bringSubviewToFront(viewsSaad[counter])
                    }
                }
            }

        }


    @IBAction func SegDidChanged(_ sender:  UISegmentedControl) {
        
        
        if sender.selectedSegmentIndex == 0{
            RevSaad.alpha = 1
         
            LikSaad.alpha = 0
        }else if sender.selectedSegmentIndex == 1{
            RevSaad.alpha = 0
         
            LikSaad.alpha = 1
        }
        
        
    }
    

}
