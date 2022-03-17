//
//  PostReviewViewController.swift
//  ReviewApp
//
//  Created by Waad Alsaif on 08/03/2022.
//

import UIKit

class PostReviewViewController: UIViewController ,UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    @IBOutlet var star: [UIButton]!
    
    var rating = 0 {
        didSet{

            for starButton in star{

                let imageName = (starButton.tag < rating ? "star.fill" : "star")

                starButton.setImage(UIImage(systemName: imageName), for: .normal)

            }

            print("new rating")
//review.rating = rating
        }
    }

    
    
    
    
    @IBOutlet weak var Photoview: UIImageView!
    
    @IBOutlet weak var PhotoView: UIView!
    @IBOutlet weak var reviewbox: UIView!
    @IBOutlet weak var Namebox: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

//
        PhotoView.layer.borderWidth = 1
       PhotoView.layer.borderColor  = UIColor.lightGray.cgColor

         reviewbox.layer.borderWidth = 0.25
         reviewbox.layer.borderColor  = UIColor.lightGray.cgColor

         Namebox.layer.borderWidth = 0.25
         Namebox.layer.borderColor  = UIColor.lightGray.cgColor
  
    }
    

    @IBAction func UploadButton(_ sender: Any) {
        
        let myPickerController = UIImagePickerController()
        myPickerController.delegate =  self
        myPickerController.sourceType = UIImagePickerController.SourceType.photoLibrary

        self.present(myPickerController, animated: true, completion: nil)
    
    }
  
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {

        Photoview.image = info [UIImagePickerController.InfoKey.originalImage] as? UIImage

        self.dismiss(animated: true, completion: nil)



    }
    
    @IBAction func starTapped(_ sender: UIButton) {

        rating = sender.tag + 1
}
    
    
    
    
    
    
    
    
    
}
