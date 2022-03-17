//
//  EdiitProfileViewController.swift
//  EditProfile
//
//  Created by AlDana Alsowaity on 04/03/2022.
//

import UIKit

class EdiitProfileViewController: UIViewController, UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
    @IBOutlet weak var ProfilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func ChangeProfilePicture(_ sender: Any) {
        
        let myPickerController = UIImagePickerController()
        myPickerController.delegate =  self
        myPickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        self.present(myPickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
       
        ProfilePicture.image = info [UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func SavaButton(_ sender: Any) {
    }
    

}
