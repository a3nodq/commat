 //
//  MenuCollectionViewCell.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 16/03/2022.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var menuPic: UIImageView!
    
    func setupCell (photo : UIImage ){
        menuPic.image = photo 
    }
}
