//
//  nearbyCollectionViewCell.swift
//  ReviewApp2
//
//  Created by Waad Alsaif on 17/03/2022.
//

import UIKit

class nearbyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    func setupnearby(photonear: UIImage){
        
        photo.image = photonear
    }
}
